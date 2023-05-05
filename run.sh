rm -f pkg_vn-vn_v4.0.x.zip
zip -r pkg_vn-vn_v4.0.x.zip . -x '**/.DS_Store' -x '**/__MACOSX' -x run.sh -x '**.sh' -x '*.git*'