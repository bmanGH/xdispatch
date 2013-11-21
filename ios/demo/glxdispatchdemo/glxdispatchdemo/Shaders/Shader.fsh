//
//  Shader.fsh
//  glxdispatchdemo
//
//  Created by bman on 11/21/13.
//  Copyright (c) 2013 bman. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
