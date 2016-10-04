#!/bin/sh

find icons -type f -print0 | xargs -0 sed -i "" "s/var _Svg.*//g"
find icons -type f -print0 | xargs -0 sed -i "" "s/_SvgIcon2.default,/'svg',/g"
find icons -type f -print0 | xargs -0 sed -i "" "s/props,/Object.assign({}, props, { style: {width: (props.size || '24px'), height: (props.size || '24px')}, viewBox: (props.viewBox || '0 0 24 24'), className: props.className }),/g"
find icons -type f -print0 | xargs -0 sed -i "" "s/.*muiName.*;//g"
find icons -type f -print0 | xargs -0 sed -i "" "s/^var _pure.*//g"
find icons -type f -print0 | xargs -0 sed -i "" "s/.*pure2.default.*//g"
