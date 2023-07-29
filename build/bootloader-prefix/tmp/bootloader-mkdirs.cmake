# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/tillkorsmeier/esp/esp-idf/components/bootloader/subproject"
  "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader"
  "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix"
  "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix/tmp"
  "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix/src"
  "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/tillkorsmeier/esp/ESP_IDF_Blink/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
