package com.android.systemui.wallpaper.glwallpaper;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ImageGLWallpaper {
    public int mAttrPosition;
    public int mAttrTextureCoordinates;
    public final ImageGLProgram mProgram;
    public final FloatBuffer mTextureBuffer;
    public int mTextureId;
    public int mUniFilterColor;
    public int mUniNightFilter;
    public int mUniTexture;
    public final FloatBuffer mVertexBuffer;
    public static final float[] VERTICES = {-1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, -1.0f, -1.0f};
    public static final float[] TEXTURES = {0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};

    public ImageGLWallpaper(ImageGLProgram imageGLProgram) {
        this.mProgram = imageGLProgram;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mVertexBuffer = asFloatBuffer;
        asFloatBuffer.put(VERTICES);
        asFloatBuffer.position(0);
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mTextureBuffer = asFloatBuffer2;
        asFloatBuffer2.put(TEXTURES);
        asFloatBuffer2.position(0);
    }

    public final int getHandle(String str) {
        if (!str.equals("uFilterColor")) {
            if (!str.equals("uNightFilter")) {
                return -1;
            }
            return this.mUniNightFilter;
        }
        return this.mUniFilterColor;
    }
}
