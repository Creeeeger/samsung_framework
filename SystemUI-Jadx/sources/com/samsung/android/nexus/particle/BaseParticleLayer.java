package com.samsung.android.nexus.particle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import com.samsung.android.nexus.base.layer.BaseLayer;
import com.samsung.android.nexus.base.layer.NexusLayerParams;
import com.samsung.android.nexus.base.utils.Log;
import com.samsung.android.nexus.egl.object.texture.RectangleTextureLayer;
import com.samsung.android.nexus.egl.object.texture.TextureData;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public abstract class BaseParticleLayer extends BaseLayer {
    public RectangleTextureLayer mEffectLayer = null;
    public Bitmap mBitmap = null;
    public Canvas mBitmapCanvas = null;
    public boolean mNeedToInit = false;

    public BaseParticleLayer(NexusLayerParams nexusLayerParams) {
        setLayerParams(nexusLayerParams);
    }

    public abstract void drawOnCanvas(Canvas canvas);

    @Override // com.samsung.android.nexus.base.layer.BaseLayer
    public final void onCreate() {
        this.mNeedToInit = true;
    }

    @Override // com.samsung.android.nexus.base.layer.BaseLayer
    public final void onDraw() {
        int i;
        if (this.mNeedToInit) {
            Log.i("BaseParticleLayer", "Start to init path effect elements");
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.mBitmap.recycle();
            }
            this.mBitmap = Bitmap.createBitmap(getLayerParams().mWidth, getLayerParams().mHeight, Bitmap.Config.ARGB_8888);
            this.mBitmapCanvas = new Canvas(this.mBitmap);
            RectangleTextureLayer rectangleTextureLayer = this.mEffectLayer;
            if (rectangleTextureLayer != null) {
                rectangleTextureLayer.clear();
            }
            int i2 = (int) ((-(getNexusContext().mWidth / 2.0f)) + getLayerParams().mX);
            int i3 = (int) ((getNexusContext().mHeight / 2.0f) - getLayerParams().mY);
            RectangleTextureLayer rectangleTextureLayer2 = new RectangleTextureLayer(new Rect(i2, i3, getLayerParams().mWidth + i2, i3 - getLayerParams().mHeight), this.mBitmap);
            this.mEffectLayer = rectangleTextureLayer2;
            rectangleTextureLayer2.setNexusContext(getNexusContext());
            this.mEffectLayer.init();
            this.mNeedToInit = false;
        }
        prepareToDraw();
        this.mBitmapCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        drawOnCanvas(this.mBitmapCanvas);
        RectangleTextureLayer rectangleTextureLayer3 = this.mEffectLayer;
        Bitmap bitmap2 = this.mBitmap;
        TextureData textureData = rectangleTextureLayer3.mTextureData;
        if (textureData != null && bitmap2 != null && !bitmap2.isRecycled() && (i = textureData.handle) != -1 && !bitmap2.isRecycled() && i >= 0) {
            GLES20.glBindTexture(3553, i);
            GLUtils.texImage2D(3553, 0, bitmap2, 0);
            GLES20.glBindTexture(3553, 0);
        }
        this.mEffectLayer.onDrawElements();
    }

    @Override // com.samsung.android.nexus.base.layer.BaseLayer
    public void onLayerParamsChanged(NexusLayerParams nexusLayerParams) {
        this.mNeedToInit = true;
    }

    public abstract void prepareToDraw();

    @Override // com.samsung.android.nexus.base.layer.BaseLayer
    public final void onDraw(Canvas canvas) {
        drawOnCanvas(canvas);
    }

    @Override // com.samsung.android.nexus.base.layer.BaseLayer
    public void onVisibilityChanged(Boolean bool) {
    }
}
