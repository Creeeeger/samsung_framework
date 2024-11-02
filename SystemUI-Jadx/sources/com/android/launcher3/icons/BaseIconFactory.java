package com.android.launcher3.icons;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.util.SparseBooleanArray;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.ClockDrawableWrapper;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.FlagOp$$ExternalSyntheticLambda0;
import com.android.systemui.R;
import com.samsung.android.knox.custom.IKnoxCustomManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class BaseIconFactory implements AutoCloseable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Canvas mCanvas;
    public final ColorExtractor mColorExtractor;
    public final Context mContext;
    public final int mFillResIconDpi;
    public final int mIconBitmapSize;
    public final SparseBooleanArray mIsUserBadged;
    public IconNormalizer mNormalizer;
    public final Rect mOldBounds;
    public final PackageManager mPm;
    public ShadowGenerator mShadowGenerator;
    public final boolean mShapeDetection;
    public int mWrapperBackgroundColor;
    public Drawable mWrapperIcon;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class IconOptions {
        public boolean mIsCloneProfile;
        public UserHandle mUserHandle;
        public final boolean mShrinkNonAdaptiveIcons = true;
        public final int mGenerationMode = 2;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class NoopDrawable extends ColorDrawable {
        public /* synthetic */ NoopDrawable(int i) {
            this();
        }

        @Override // android.graphics.drawable.Drawable
        public final int getIntrinsicHeight() {
            return 1;
        }

        @Override // android.graphics.drawable.Drawable
        public final int getIntrinsicWidth() {
            return 1;
        }

        private NoopDrawable() {
        }
    }

    static {
        Color.rgb(IKnoxCustomManager.Stub.TRANSACTION_setHomeScreenMode, IKnoxCustomManager.Stub.TRANSACTION_setHomeScreenMode, IKnoxCustomManager.Stub.TRANSACTION_setHomeScreenMode);
    }

    public BaseIconFactory(Context context, int i, int i2, boolean z) {
        this.mOldBounds = new Rect();
        this.mIsUserBadged = new SparseBooleanArray();
        this.mWrapperBackgroundColor = -1;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mShapeDetection = z;
        this.mFillResIconDpi = i;
        this.mIconBitmapSize = i2;
        this.mPm = applicationContext.getPackageManager();
        this.mColorExtractor = new ColorExtractor();
        Canvas canvas = new Canvas();
        this.mCanvas = canvas;
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        this.mWrapperBackgroundColor = -1;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mWrapperBackgroundColor = -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final BitmapInfo createBadgedIconBitmap(Drawable drawable, IconOptions iconOptions) {
        boolean z;
        final int i;
        FlagOp flagOp;
        boolean z2;
        boolean z3;
        boolean z4;
        final FlagOp flagOp2;
        boolean z5;
        final int i2 = 1;
        final int i3 = 0;
        if (iconOptions.mShrinkNonAdaptiveIcons) {
            z = true;
        } else {
            z = false;
        }
        float[] fArr = new float[1];
        Drawable normalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, z, null, fArr);
        Bitmap createIconBitmap = createIconBitmap(normalizeAndWrapToAdaptiveIcon, fArr[0], iconOptions.mGenerationMode);
        int findDominantColorByHue = this.mColorExtractor.findDominantColorByHue(createIconBitmap);
        BitmapInfo bitmapInfo = new BitmapInfo(createIconBitmap, findDominantColorByHue);
        if (normalizeAndWrapToAdaptiveIcon instanceof BitmapInfo.Extender) {
            float f = fArr[0];
            ClockDrawableWrapper clockDrawableWrapper = (ClockDrawableWrapper) ((BitmapInfo.Extender) normalizeAndWrapToAdaptiveIcon);
            clockDrawableWrapper.getClass();
            Bitmap createScaledBitmap = createScaledBitmap(4, new AdaptiveIconDrawable(clockDrawableWrapper.getBackground().getConstantState().newDrawable(), null));
            ClockDrawableWrapper.AnimationInfo animationInfo = clockDrawableWrapper.mAnimationInfo;
            i = 4;
            bitmapInfo = new ClockDrawableWrapper.ClockBitmapInfo(createIconBitmap, findDominantColorByHue, f, animationInfo, createScaledBitmap, null, null);
        } else {
            i = 4;
            int i4 = IconProvider.CONFIG_ICON_MASK_RES_ID;
        }
        final FlagOp$$ExternalSyntheticLambda0 flagOp$$ExternalSyntheticLambda0 = FlagOp.NO_OP;
        UserHandle userHandle = iconOptions.mUserHandle;
        if (userHandle != null) {
            int hashCode = userHandle.hashCode();
            int indexOfKey = this.mIsUserBadged.indexOfKey(hashCode);
            if (indexOfKey >= 0) {
                z3 = this.mIsUserBadged.valueAt(indexOfKey);
            } else {
                NoopDrawable noopDrawable = new NoopDrawable(i3);
                if (noopDrawable != this.mPm.getUserBadgedIcon(noopDrawable, iconOptions.mUserHandle)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.mIsUserBadged.put(hashCode, z2);
                z3 = z2;
            }
            if (z3 && iconOptions.mIsCloneProfile) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z4) {
                flagOp2 = new FlagOp() { // from class: com.android.launcher3.util.FlagOp$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.util.FlagOp
                    public final int apply(int i5) {
                        int i6 = i3;
                        int i7 = i;
                        FlagOp flagOp3 = flagOp$$ExternalSyntheticLambda0;
                        switch (i6) {
                            case 0:
                                return flagOp3.apply(i5) | i7;
                            default:
                                return flagOp3.apply(i5) & (~i7);
                        }
                    }
                };
            } else {
                flagOp2 = new FlagOp() { // from class: com.android.launcher3.util.FlagOp$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.util.FlagOp
                    public final int apply(int i5) {
                        int i6 = i2;
                        int i7 = i;
                        FlagOp flagOp3 = flagOp$$ExternalSyntheticLambda0;
                        switch (i6) {
                            case 0:
                                return flagOp3.apply(i5) | i7;
                            default:
                                return flagOp3.apply(i5) & (~i7);
                        }
                    }
                };
            }
            if (z3 && !iconOptions.mIsCloneProfile) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (z5) {
                flagOp = new FlagOp() { // from class: com.android.launcher3.util.FlagOp$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.util.FlagOp
                    public final int apply(int i5) {
                        int i6 = i3;
                        int i7 = i2;
                        FlagOp flagOp3 = flagOp2;
                        switch (i6) {
                            case 0:
                                return flagOp3.apply(i5) | i7;
                            default:
                                return flagOp3.apply(i5) & (~i7);
                        }
                    }
                };
            } else {
                flagOp = new FlagOp() { // from class: com.android.launcher3.util.FlagOp$$ExternalSyntheticLambda1
                    @Override // com.android.launcher3.util.FlagOp
                    public final int apply(int i5) {
                        int i6 = i2;
                        int i7 = i2;
                        FlagOp flagOp3 = flagOp2;
                        switch (i6) {
                            case 0:
                                return flagOp3.apply(i5) | i7;
                            default:
                                return flagOp3.apply(i5) & (~i7);
                        }
                    }
                };
            }
        } else {
            flagOp = flagOp$$ExternalSyntheticLambda0;
        }
        if (flagOp != flagOp$$ExternalSyntheticLambda0) {
            BitmapInfo mo64clone = bitmapInfo.mo64clone();
            mo64clone.flags = flagOp.apply(mo64clone.flags);
            return mo64clone;
        }
        return bitmapInfo;
    }

    public final BitmapInfo createIconBitmap(Bitmap bitmap) {
        if (this.mIconBitmapSize != bitmap.getWidth() || this.mIconBitmapSize != bitmap.getHeight()) {
            bitmap = createIconBitmap(new BitmapDrawable(this.mContext.getResources(), bitmap), 1.0f, 0);
        }
        return new BitmapInfo(bitmap, this.mColorExtractor.findDominantColorByHue(bitmap));
    }

    public final Bitmap createScaledBitmap(int i, Drawable drawable) {
        float f;
        RectF rectF = new RectF();
        float[] fArr = new float[1];
        Drawable normalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, true, rectF, fArr);
        float f2 = fArr[0];
        float min = Math.min(Math.min(rectF.left, rectF.right), rectF.top);
        if (min < 0.035f) {
            f = 0.465f / (0.5f - min);
        } else {
            f = 1.0f;
        }
        float f3 = rectF.bottom;
        if (f3 < 0.055833332f) {
            f = Math.min(f, 0.44416666f / (0.5f - f3));
        }
        return createIconBitmap(normalizeAndWrapToAdaptiveIcon, Math.min(f2, f), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void drawIconBitmap(android.graphics.Canvas r11, android.graphics.drawable.Drawable r12, float r13, int r14, android.graphics.Bitmap r15) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.BaseIconFactory.drawIconBitmap(android.graphics.Canvas, android.graphics.drawable.Drawable, float, int, android.graphics.Bitmap):void");
    }

    public final IconNormalizer getNormalizer() {
        if (this.mNormalizer == null) {
            this.mNormalizer = new IconNormalizer(this.mContext, this.mIconBitmapSize, this.mShapeDetection);
        }
        return this.mNormalizer;
    }

    public final Drawable normalizeAndWrapToAdaptiveIcon(Drawable drawable, boolean z, RectF rectF, float[] fArr) {
        float scale;
        if (drawable == null) {
            return null;
        }
        if (z && !(drawable instanceof AdaptiveIconDrawable)) {
            if (this.mWrapperIcon == null) {
                this.mWrapperIcon = this.mContext.getDrawable(R.drawable.adaptive_icon_drawable_wrapper).mutate();
            }
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) this.mWrapperIcon;
            adaptiveIconDrawable.setBounds(0, 0, 1, 1);
            boolean[] zArr = new boolean[1];
            scale = getNormalizer().getScale(drawable, rectF, adaptiveIconDrawable.getIconMask(), zArr);
            if (!zArr[0]) {
                FixedScaleDrawable fixedScaleDrawable = (FixedScaleDrawable) adaptiveIconDrawable.getForeground();
                fixedScaleDrawable.setDrawable(drawable);
                float intrinsicHeight = fixedScaleDrawable.getIntrinsicHeight();
                float intrinsicWidth = fixedScaleDrawable.getIntrinsicWidth();
                float f = scale * 0.46669f;
                fixedScaleDrawable.mScaleX = f;
                fixedScaleDrawable.mScaleY = f;
                if (intrinsicHeight > intrinsicWidth && intrinsicWidth > 0.0f) {
                    fixedScaleDrawable.mScaleX = (intrinsicWidth / intrinsicHeight) * f;
                } else if (intrinsicWidth > intrinsicHeight && intrinsicHeight > 0.0f) {
                    fixedScaleDrawable.mScaleY = (intrinsicHeight / intrinsicWidth) * f;
                }
                scale = getNormalizer().getScale(adaptiveIconDrawable, rectF, null, null);
                ((ColorDrawable) adaptiveIconDrawable.getBackground()).setColor(this.mWrapperBackgroundColor);
                drawable = adaptiveIconDrawable;
            }
        } else {
            scale = getNormalizer().getScale(drawable, rectF, null, null);
        }
        fArr[0] = scale;
        return drawable;
    }

    public final Bitmap createIconBitmap(Drawable drawable, float f, int i) {
        Bitmap createBitmap;
        int i2 = this.mIconBitmapSize;
        if (i == 1) {
            createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ALPHA_8);
        } else if (i != 3 && i != 4) {
            createBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        } else {
            GraphicsUtils$$ExternalSyntheticLambda0 graphicsUtils$$ExternalSyntheticLambda0 = GraphicsUtils.sOnNewBitmapRunnable;
            Picture picture = new Picture();
            drawIconBitmap(picture.beginRecording(i2, i2), drawable, f, i, null);
            picture.endRecording();
            return Bitmap.createBitmap(picture);
        }
        if (drawable == null) {
            return createBitmap;
        }
        this.mCanvas.setBitmap(createBitmap);
        drawIconBitmap(this.mCanvas, drawable, f, i, createBitmap);
        this.mCanvas.setBitmap(null);
        return createBitmap;
    }

    public BaseIconFactory(Context context, int i, int i2) {
        this(context, i, i2, false);
    }
}
