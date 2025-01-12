rm -f pkg_vi-VN_v4.0.x.zip
zip -r pkg_vi-VN_v4.0.x.zip . -x '**/.DS_Store' -x '**/__MACOSX' -x run.sh -x '**.sh' -x '*.git*' -x '.DS_Store'