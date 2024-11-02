package com.android.systemui.qs;

import android.content.res.Configuration;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecDarkModeEasel {
    public int mAssetSeq;
    public final PictureSubject mPictureSubject;
    public int mThemeSeq;
    public int mUIMode;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface PictureSubject {
        void drawDarkModelPicture();
    }

    public SecDarkModeEasel(PictureSubject pictureSubject) {
        this.mPictureSubject = pictureSubject;
    }

    public final void updateColors(Configuration configuration) {
        int i = this.mThemeSeq;
        int i2 = configuration.themeSeq;
        if (i != i2 || this.mAssetSeq != configuration.assetsSeq || this.mUIMode != configuration.uiMode) {
            this.mThemeSeq = i2;
            this.mAssetSeq = configuration.assetsSeq;
            this.mUIMode = configuration.uiMode;
            this.mPictureSubject.drawDarkModelPicture();
        }
    }
}
