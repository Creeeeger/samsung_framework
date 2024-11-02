package com.samsung.android.knox.lockscreen;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class LSOImageView extends ImageView {
    public LSOImageView(Context context, LSOItemImage lSOItemImage) {
        super(context);
        Bitmap maxBitmap;
        int maxImageSize = LSOUtils.getMaxImageSize(context);
        int maxImageSize2 = LSOUtils.getMaxImageSize(context);
        if (lSOItemImage.isFieldUpdated(64)) {
            LSOAttributeSet attrs = lSOItemImage.getAttrs();
            maxImageSize = attrs.containsKey(LSOAttrConst.ATTR_MAX_WIDTH) ? attrs.getAsInteger(LSOAttrConst.ATTR_MAX_WIDTH).intValue() : maxImageSize;
            if (attrs.containsKey(LSOAttrConst.ATTR_MAX_HEIGHT)) {
                maxImageSize2 = attrs.getAsInteger(LSOAttrConst.ATTR_MAX_HEIGHT).intValue();
            }
        }
        if (lSOItemImage.isFieldUpdated(128) && (maxBitmap = LSOUtils.getMaxBitmap(lSOItemImage.imagePath, maxImageSize, maxImageSize2)) != null) {
            setImageBitmap(maxBitmap);
        }
        if (lSOItemImage.isFieldUpdated(512)) {
            setScaleType(lSOItemImage.getScaleType());
        } else {
            setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
    }
}
