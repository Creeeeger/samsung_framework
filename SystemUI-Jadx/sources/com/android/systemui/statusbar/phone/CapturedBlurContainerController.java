package com.android.systemui.statusbar.phone;

import android.app.SemWallpaperColors;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.QpRune;
import com.android.systemui.blur.BouncerColorCurve;
import com.android.systemui.blur.QSColorCurve;
import com.android.systemui.blur.SecQpBlurController;
import com.android.systemui.keyguard.KeyguardFoldController;
import com.android.systemui.keyguard.KeyguardFoldControllerImpl;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.phone.CapturedBlurContainerController;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.ViewController;
import com.android.systemui.wallpaper.KeyguardWallpaper;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.view.SystemUIWallpaperBase;
import com.samsung.android.graphics.SemGfxImageFilter;
import com.samsung.android.view.SemWindowManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class CapturedBlurContainerController extends ViewController {
    public final SemGfxImageFilter mBlurFilter;
    public SecQpBlurController.AnonymousClass2 mBlurUtils;
    public final BouncerColorCurve mBouncerColorCurve;
    public final QSColorCurve mColorCurve;
    public boolean mIsBouncerShowing;
    public final KeyguardWallpaper mKeyguardWallpaper;
    public BlurType mLastBlurType;
    public final Handler mMainHandler;
    public final SecPanelBackgroundController mPanelBackgroundController;
    public Bitmap mPrevWallpaper;
    public final SettingsHelper mSettingsHelper;
    public final Point mSizePoint;
    public final StatusBarStateController mStatusBarStateController;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.CapturedBlurContainerController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public abstract /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$systemui$statusbar$phone$CapturedBlurContainerController$BlurType;

        static {
            int[] iArr = new int[BlurType.values().length];
            $SwitchMap$com$android$systemui$statusbar$phone$CapturedBlurContainerController$BlurType = iArr;
            try {
                iArr[BlurType.QUICK_PANEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$systemui$statusbar$phone$CapturedBlurContainerController$BlurType[BlurType.BOUNCER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public enum BlurType {
        BOUNCER,
        QUICK_PANEL
    }

    public CapturedBlurContainerController(CapturedBlurContainer capturedBlurContainer, KeyguardWallpaper keyguardWallpaper, StatusBarStateController statusBarStateController, SecPanelBackgroundController secPanelBackgroundController, SettingsHelper settingsHelper, CentralSurfaces centralSurfaces) {
        super(capturedBlurContainer);
        this.mBlurFilter = new SemGfxImageFilter();
        this.mSizePoint = new Point();
        this.mLastBlurType = null;
        this.mMainHandler = new Handler(Looper.getMainLooper());
        this.mIsBouncerShowing = false;
        this.mKeyguardWallpaper = keyguardWallpaper;
        this.mStatusBarStateController = statusBarStateController;
        this.mPanelBackgroundController = secPanelBackgroundController;
        this.mSettingsHelper = settingsHelper;
        this.mColorCurve = new QSColorCurve(getContext());
        this.mBouncerColorCurve = new BouncerColorCurve();
        ((CapturedBlurContainer) this.mView).addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.systemui.statusbar.phone.CapturedBlurContainerController$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                boolean z;
                final CapturedBlurContainerController capturedBlurContainerController = CapturedBlurContainerController.this;
                capturedBlurContainerController.getClass();
                if (i != i5 || i3 != i7 || i2 != i6 || i4 != i8) {
                    if (((CapturedBlurContainer) capturedBlurContainerController.mView).getVisibility() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        Display display = capturedBlurContainerController.getContext().getDisplay();
                        Point point = capturedBlurContainerController.mSizePoint;
                        display.getRealSize(point);
                        point.x /= 5;
                        point.y /= 5;
                        capturedBlurContainerController.mMainHandler.post(new Runnable() { // from class: com.android.systemui.statusbar.phone.CapturedBlurContainerController$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                CapturedBlurContainerController capturedBlurContainerController2 = CapturedBlurContainerController.this;
                                if (capturedBlurContainerController2.mIsBouncerShowing) {
                                    capturedBlurContainerController2.captureAndSetBackground(CapturedBlurContainerController.BlurType.BOUNCER);
                                }
                            }
                        });
                    }
                }
            }
        });
    }

    public final void captureAndSetBackground(BlurType blurType) {
        boolean z;
        Bitmap bitmap;
        boolean z2;
        Bitmap createScaledBitmap;
        int i;
        Bitmap bitmap2;
        SemWallpaperColors cachedSemWallpaperColors;
        float f;
        float f2;
        float f3;
        float f4;
        boolean z3 = true;
        if (((CapturedBlurContainer) this.mView).getVisibility() != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            if (!SecQpBlurController.this.mIsWakingUp || blurType != BlurType.QUICK_PANEL) {
                float f5 = 0.0f;
                float f6 = 255.0f;
                if (this.mStatusBarStateController.getState() == 0 && blurType == BlurType.QUICK_PANEL) {
                    Log.d("CapturedBlurContainerController", "getShadeScreenshot() SHADE WM screenshot");
                    createScaledBitmap = getWMScreenshot();
                } else if (WallpaperUtils.isLiveWallpaperAppliedOnLock(getContext())) {
                    Log.d("CapturedBlurContainerController", "getLiveWallpaperScreenshot() isExternalLiveWallpaper WM screenshot");
                    createScaledBitmap = getWMScreenshot();
                } else {
                    KeyguardWallpaperController keyguardWallpaperController = (KeyguardWallpaperController) this.mKeyguardWallpaper;
                    SystemUIWallpaperBase systemUIWallpaperBase = keyguardWallpaperController.mWallpaperView;
                    if (systemUIWallpaperBase != null) {
                        bitmap = systemUIWallpaperBase.getCapturedWallpaper();
                    } else {
                        bitmap = null;
                    }
                    if (bitmap == null) {
                        Log.e("CapturedBlurContainerController", "Try to get wallpaper bitmap");
                        bitmap = keyguardWallpaperController.getWallpaperBitmap();
                        if (bitmap == null) {
                            Log.e("CapturedBlurContainerController", "Wallpaper capture failed.");
                            createScaledBitmap = null;
                        }
                    }
                    Log.d("CapturedBlurContainerController", "getNormalWallpaperScreenShot() type == " + blurType);
                    if (((bitmap.getColor(bitmap.getWidth() / 2, bitmap.getHeight() / 2).toArgb() >>> 24) * 1.0f) / 255.0f == 0.0f) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && (bitmap2 = this.mPrevWallpaper) != null) {
                        bitmap = bitmap2;
                    }
                    if (WallpaperUtils.isVideoWallpaper()) {
                        bitmap = WallpaperUtils.cropBitmap(bitmap, ((CapturedBlurContainer) this.mView).getRootView().getWidth(), ((CapturedBlurContainer) this.mView).getRootView().getHeight());
                    }
                    Bitmap bitmap3 = bitmap;
                    this.mPrevWallpaper = bitmap3;
                    if (!QpRune.QUICK_TABLET && this.mSettingsHelper.getLockscreenWallpaperTransparent(false) != 0) {
                        Configuration configuration = getContext().getResources().getConfiguration();
                        if (configuration.orientation != 1) {
                            int rotation = configuration.windowConfiguration.getRotation();
                            if (rotation != 1) {
                                if (rotation != 3) {
                                    i = 0;
                                } else {
                                    i = 90;
                                }
                            } else {
                                i = 270;
                            }
                            Matrix matrix = new Matrix();
                            matrix.postRotate(i);
                            bitmap3 = Bitmap.createBitmap(bitmap3, 0, 0, bitmap3.getWidth(), bitmap3.getHeight(), matrix, true);
                        }
                    }
                    createScaledBitmap = Bitmap.createScaledBitmap(bitmap3, bitmap3.getWidth() / 5, bitmap3.getHeight() / 5, true);
                }
                if (createScaledBitmap == null) {
                    return;
                }
                Log.d("CapturedBlurContainerController", "setBlurEffectOnBitmap : " + blurType);
                this.mLastBlurType = blurType;
                int i2 = AnonymousClass1.$SwitchMap$com$android$systemui$statusbar$phone$CapturedBlurContainerController$BlurType[blurType.ordinal()];
                SemGfxImageFilter semGfxImageFilter = this.mBlurFilter;
                if (i2 != 2) {
                    QSColorCurve qSColorCurve = this.mColorCurve;
                    qSColorCurve.setFraction(1.0f);
                    semGfxImageFilter.setBlurRadius(qSColorCurve.radius);
                    SecQpBlurController.AnonymousClass2 anonymousClass2 = this.mBlurUtils;
                    if (anonymousClass2 == null || !anonymousClass2.hasCustomColorForPanelBG()) {
                        z3 = false;
                    }
                    if (z3) {
                        f = qSColorCurve.saturation;
                    } else {
                        f = 0.0f;
                    }
                    semGfxImageFilter.setProportionalSaturation(f);
                    if (z3) {
                        f2 = 0.0f;
                    } else {
                        f2 = qSColorCurve.curve;
                    }
                    semGfxImageFilter.setCurveLevel(f2);
                    if (z3) {
                        f3 = 0.0f;
                    } else {
                        f3 = qSColorCurve.minX;
                    }
                    semGfxImageFilter.setCurveMinX(f3);
                    if (z3) {
                        f4 = 255.0f;
                    } else {
                        f4 = qSColorCurve.maxX;
                    }
                    semGfxImageFilter.setCurveMaxX(f4);
                    if (!z3) {
                        f5 = qSColorCurve.minY;
                    }
                    semGfxImageFilter.setCurveMinY(f5);
                    if (!z3) {
                        f6 = qSColorCurve.maxY;
                    }
                    semGfxImageFilter.setCurveMaxY(f6);
                } else {
                    if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
                        if (Boolean.valueOf(((KeyguardFoldControllerImpl) ((KeyguardFoldController) Dependency.get(KeyguardFoldController.class))).isFoldOpened()) != null) {
                            cachedSemWallpaperColors = WallpaperUtils.getCachedSemWallpaperColors(!r1.booleanValue());
                        } else {
                            cachedSemWallpaperColors = WallpaperUtils.getCachedSemWallpaperColors(WallpaperUtils.isSubDisplay());
                        }
                        if (cachedSemWallpaperColors == null || cachedSemWallpaperColors.get(512L).getFontColor() != 1) {
                            z3 = false;
                        }
                    } else {
                        z3 = WallpaperUtils.isWhiteKeyguardWallpaper("background");
                    }
                    BouncerColorCurve bouncerColorCurve = this.mBouncerColorCurve;
                    bouncerColorCurve.setFraction(1.0f, z3);
                    semGfxImageFilter.setBlurRadius(bouncerColorCurve.mRadius);
                    semGfxImageFilter.setProportionalSaturation(0.0f);
                    semGfxImageFilter.setCurveLevel(bouncerColorCurve.mCurve);
                    semGfxImageFilter.setCurveMinX(bouncerColorCurve.mMinX);
                    semGfxImageFilter.setCurveMaxX(bouncerColorCurve.mMaxX);
                    semGfxImageFilter.setCurveMinY(bouncerColorCurve.mMinY);
                    semGfxImageFilter.setCurveMaxY(bouncerColorCurve.mMaxY);
                }
                ((CapturedBlurContainer) this.mView).setBackgroundDrawable(new BitmapDrawable(getContext().getResources(), semGfxImageFilter.applyToBitmap(createScaledBitmap)));
            }
        }
    }

    public final Bitmap getWMScreenshot() {
        int max;
        int min;
        boolean z = false;
        Rect rect = new Rect(0, 0, 0, 0);
        int displayId = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getDisplayId();
        if (getContext().getResources().getConfiguration().orientation == 1) {
            z = true;
        }
        Point point = this.mSizePoint;
        int i = point.x;
        int i2 = point.y;
        if (z) {
            max = Math.min(i, i2);
        } else {
            max = Math.max(i, i2);
        }
        int i3 = max;
        if (z) {
            min = Math.max(point.x, point.y);
        } else {
            min = Math.min(point.x, point.y);
        }
        return SemWindowManager.getInstance().screenshot(displayId, 2000, false, rect, i3, min, false, 0, true);
    }

    public final void updateContainerVisibility() {
        boolean z;
        SecQpBlurController.AnonymousClass2 anonymousClass2;
        int i = 0;
        if (this.mPanelBackgroundController.mMaxAlpha != 1.0f && ((anonymousClass2 = this.mBlurUtils) == null || !SecQpBlurController.this.mIsBlurReduced)) {
            z = false;
        } else {
            z = true;
        }
        CapturedBlurContainer capturedBlurContainer = (CapturedBlurContainer) this.mView;
        if (z) {
            i = 8;
        }
        capturedBlurContainer.setVisibility(i);
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewAttached() {
    }

    @Override // com.android.systemui.util.ViewController
    public final void onViewDetached() {
    }
}
