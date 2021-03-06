# from http://blog.zachallett.com/howto-ruby-c-extension-with-a-static-library/
require 'mkmf'

extension_name = 'ruby_snowflake_client'
LIB_SNOWFLAKE_DIR = "#{File.dirname(__FILE__)}/../../lib"  # TODO not working

LIBDIR = RbConfig::CONFIG['libdir']
INCLUDEDIR = RbConfig::CONFIG['includedir']
HEADER_DIRS = [INCLUDEDIR, LIB_SNOWFLAKE_DIR]
append_cflags('-fPIC')
LIB_LOCAL_MAC = "/opt/local/lib/"

# setup constant that is equal to that of the file path that holds that static libraries that will need to be compiled against
LIB_DIRS = [LIBDIR, LIB_SNOWFLAKE_DIR, LIB_LOCAL_MAC ]

# array of all libraries that the C extension should be compiled against
libs = ['-lsnowflakeclient', '-lcrypto', '-lcurl', '-lssl', '-lz']

dir_config('snowflakeclient', HEADER_DIRS, LIB_DIRS)

# iterate though the libs array, and append them to the $LOCAL_LIBS array used for the makefile creation
libs.each do |lib|
  $LOCAL_LIBS << "#{lib} "
end

build_libsnowflake = "bash ./build_libsnowflakeclient.sh"
system(build_libsnowflake)

create_makefile(extension_name)

