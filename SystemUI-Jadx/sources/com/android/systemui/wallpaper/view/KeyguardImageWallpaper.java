package com.android.systemui.wallpaper.view;

import android.app.SemWallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import android.view.DisplayInfo;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFMMViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.android.systemui.coverlauncher.utils.badge.NotificationListener$$ExternalSyntheticOutline0;
import com.android.systemui.keyguard.KeyguardFastBioUnlockController;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.pluginlock.PluginWallpaperManagerImpl;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.FixedOrientationController;
import com.android.systemui.wallpaper.KeyguardWallpaperController;
import com.android.systemui.wallpaper.WallpaperResultCallback;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.wallpaper.effect.ColorDecorFilterHelper;
import com.android.systemui.wallpaper.effect.HighlightFilterHelper;
import com.android.systemui.wallpaper.glwallpaper.ImageDarkModeFilter;
import com.android.systemui.wallpaper.glwallpaper.ImageSmartCropper;
import com.android.systemui.wallpaper.log.WallpaperLogger;
import com.android.systemui.wallpaper.tilt.Drawer;
import com.android.systemui.wallpaper.tilt.SequentialAnimator;
import com.android.systemui.wallpaper.tilt.TiltColorController;
import com.android.systemui.wallpaper.utils.IntelligentCropHelper;
import com.samsung.android.wallpaper.utils.SemWallpaperProperties;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;
import javax.inject.Provider;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardImageWallpaper extends SystemUIWallpaper implements Drawer {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Paint mAlphaPaint;
    public int mBitmapHeight;
    public int mBitmapWidth;
    public Bitmap mCache;
    public final Provider mColorProvider;
    public final Context mContext;
    public int mCurrentUserId;
    public int mCurrentWhich;
    public final Matrix mDrawMatrix;
    public final Paint mDrawPaint;
    public final FixedOrientationController mFixedOrientationController;
    public final ImageSmartCropper mImageSmartCropper;
    public final AtomicBoolean mIsDrawRequested;
    public int mLastBottom;
    public int mLastRight;
    public final WallpaperLogger mLoggerWrapper;
    public boolean mNeedToRedraw;
    public Bitmap mOldBitmap;
    public int mOriginDx;
    public int mOriginDy;
    public final PluginWallpaperManager mPluginWallpaperManager;
    public final SettingsHelper mSettingsHelper;
    public final boolean mShouldEnableScreenRotation;
    public Rect mSmartCroppedResult;
    public final TiltColorController mTiltColorController;
    public int mUpdateWallpaperSequence;
    public boolean mUseCache;
    public int mViewHeight;
    public int mViewWidth;
    public final WallpaperManager mWallpaperManager;
    public AnonymousClass1 mWallpaperUpdator;

    public KeyguardImageWallpaper(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, WallpaperResultCallback wallpaperResultCallback, ExecutorService executorService, int i, boolean z, PluginWallpaperManager pluginWallpaperManager, SettingsHelper settingsHelper, WallpaperLogger wallpaperLogger, Consumer<Boolean> consumer, Provider provider) {
        super(context, keyguardUpdateMonitor, wallpaperResultCallback, executorService, consumer, false);
        boolean z2;
        this.mDrawMatrix = new Matrix();
        this.mCache = null;
        this.mOldBitmap = null;
        this.mIsDrawRequested = new AtomicBoolean(false);
        this.mDrawPaint = new Paint(2);
        this.mAlphaPaint = new Paint(2);
        this.mNeedToRedraw = false;
        this.mCurrentUserId = KeyguardUpdateMonitor.getCurrentUser();
        this.mUpdateWallpaperSequence = 0;
        this.mUseCache = false;
        KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("KeyguardImageWallpaper: which = ", i, " , useCache = ", z, "KeyguardImageWallpaper");
        this.mContext = context;
        this.mCurrentWhich = i;
        setWillNotDraw(false);
        this.mWallpaperManager = (WallpaperManager) context.getSystemService("wallpaper");
        this.mShouldEnableScreenRotation = DeviceState.shouldEnableKeyguardScreenRotation(context);
        this.mUseCache = z;
        this.mColorProvider = provider;
        this.mSettingsHelper = settingsHelper;
        this.mPluginWallpaperManager = pluginWallpaperManager;
        this.mLoggerWrapper = wallpaperLogger;
        if (z) {
            PluginWallpaperManagerImpl pluginWallpaperManagerImpl = (PluginWallpaperManagerImpl) pluginWallpaperManager;
            if (pluginWallpaperManagerImpl.isDynamicWallpaperEnabled()) {
                if (!LsRune.WALLPAPER_SUB_DISPLAY_MODE) {
                    this.mUseCache = false;
                } else {
                    if (pluginWallpaperManagerImpl.getWallpaperBitmap() != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        this.mUseCache = false;
                    }
                }
            }
        }
        this.mImageSmartCropper = new ImageSmartCropper(context, i);
        this.mSmartCroppedResult = null;
        if (WallpaperUtils.isEnableTilt(context)) {
            this.mTiltColorController = new TiltColorController(context, this);
        }
        this.mFixedOrientationController = new FixedOrientationController(this);
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !this.mUseCache && WallpaperUtils.isCachedWallpaperAvailable(i)) {
            Log.i("KeyguardImageWallpaper", "KeyguardImageWallpaper: recycle cache");
            WallpaperUtils.clearCachedWallpaper(i);
        }
        new IntelligentCropHelper();
        updateWallpaper(i);
    }

    public static void recycleBitmap(Bitmap bitmap) {
        Log.i("KeyguardImageWallpaper", "recycleBitmap: bmp = " + bitmap);
        if (bitmap != null) {
            synchronized (bitmap) {
                if (!bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        }
    }

    public final boolean canRotate() {
        boolean z;
        FixedOrientationController fixedOrientationController = this.mFixedOrientationController;
        if (fixedOrientationController != null) {
            SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
            if (settingsHelper != null && fixedOrientationController.mShouldEnableScreenRotation && settingsHelper.isLockScreenRotationAllowed()) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        boolean isSubDisplay = SystemUIWallpaper.isSubDisplay();
        if ((LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE && !isSubDisplay) || DeviceType.isTablet()) {
            return true;
        }
        boolean isRotationRequired = isRotationRequired();
        Log.i("KeyguardImageWallpaper", "canRotate: which = " + WallpaperUtils.sCurrentWhich + " , isRotatingWallpaper = " + isRotationRequired);
        return isRotationRequired;
    }

    public final boolean checkPreCondition(int i) {
        if (!WallpaperUtils.isCachedWallpaperAvailable(i)) {
            Log.e("KeyguardImageWallpaper", "checkPreCondition: Cached wallpaper is null or is recycled");
            return false;
        }
        Log.i("KeyguardImageWallpaper", "checkPreCondition: getHeight()  = " + getHeight());
        if (WallpaperUtils.isStatusBarHeight(getContext(), this, getHeight())) {
            Log.e("KeyguardImageWallpaper", "checkPreCondition: getHeight() is same with statusBar height.");
            return false;
        }
        if (this.mViewWidth != 0 && this.mViewHeight != 0) {
            return true;
        }
        Log.e("KeyguardImageWallpaper", "checkPreCondition: mViewWidth == 0 || mViewHeight == 0");
        return false;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void cleanUp() {
        this.mTransitionAnimationListener = null;
        Log.d("KeyguardImageWallpaper", "cleanUp()");
        AnonymousClass1 anonymousClass1 = this.mWallpaperUpdator;
        boolean z = true;
        if (anonymousClass1 != null && !anonymousClass1.isCancelled()) {
            anonymousClass1.cancel(true);
            this.mWallpaperUpdator = null;
        }
        TooltipPopup$$ExternalSyntheticOutline0.m(new StringBuilder("recycleCaches: WallpaperUtils.getCurrentWhich() = "), WallpaperUtils.sCurrentWhich, "KeyguardImageWallpaper");
        Bitmap wallpaperBitmap = ((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).getWallpaperBitmap();
        if (wallpaperBitmap == null || wallpaperBitmap != this.mCache) {
            z = false;
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("recycleCaches: isDlsBitmap=", z, "KeyguardImageWallpaper");
        if (!z) {
            recycleBitmap(this.mCache);
        }
        this.mCache = null;
        recycleBitmap(this.mOldBitmap);
        this.mOldBitmap = null;
        this.mExecutor.execute(new KeyguardImageWallpaper$$ExternalSyntheticLambda0(this));
        this.mDrawingState = 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.ArrayList getIntelligentCropHints() {
        /*
            r9 = this;
            boolean r0 = com.android.systemui.LsRune.WALLPAPER_SUB_WATCHFACE
            r1 = 6
            if (r0 == 0) goto L7
            r2 = r1
            goto L9
        L7:
            int r2 = com.android.systemui.wallpaper.WallpaperUtils.sCurrentWhich
        L9:
            int r3 = com.android.systemui.pluginlock.PluginWallpaperManager.getScreenId(r2)
            if (r0 == 0) goto L10
            goto L12
        L10:
            int r1 = com.android.systemui.wallpaper.WallpaperUtils.sCurrentWhich
        L12:
            int r0 = com.android.keyguard.KeyguardUpdateMonitor.getCurrentUser()
            if (r0 == 0) goto L1a
            r0 = 1
            goto L1b
        L1a:
            r0 = 0
        L1b:
            r4 = 0
            java.lang.String r5 = "KeyguardImageWallpaper"
            if (r0 != 0) goto L73
            int r0 = com.android.systemui.pluginlock.PluginWallpaperManager.getScreenId(r1)
            com.android.systemui.pluginlock.PluginWallpaperManager r6 = r9.mPluginWallpaperManager
            com.android.systemui.pluginlock.PluginWallpaperManagerImpl r6 = (com.android.systemui.pluginlock.PluginWallpaperManagerImpl) r6
            boolean r6 = r6.isDynamicWallpaperEnabled(r0)
            if (r6 == 0) goto L3c
            com.android.systemui.pluginlock.PluginWallpaperManager r1 = r9.mPluginWallpaperManager
            com.android.systemui.pluginlock.PluginWallpaperManagerImpl r1 = (com.android.systemui.pluginlock.PluginWallpaperManagerImpl) r1
            java.lang.String r0 = r1.getWallpaperIntelligentCrop(r0)
            java.lang.String r1 = "getIntelligentCropHintsFromDls: from DLS."
            android.util.Log.d(r5, r1)
            goto L74
        L3c:
            boolean r6 = com.android.systemui.LsRune.KEYGUARD_FBE
            java.lang.String r7 = "getIntelligentCropHintsFromDls: from FBE."
            if (r6 == 0) goto L5e
            com.android.keyguard.KeyguardUpdateMonitor r6 = r9.mUpdateMonitor
            int r8 = r9.mCurrentUserId
            boolean r6 = r6.isUserUnlocked(r8)
            if (r6 != 0) goto L5e
            boolean r6 = r9.isFbeWallpaper(r0)
            if (r6 == 0) goto L5e
            com.android.systemui.pluginlock.PluginWallpaperManager r1 = r9.mPluginWallpaperManager
            com.android.systemui.pluginlock.PluginWallpaperManagerImpl r1 = (com.android.systemui.pluginlock.PluginWallpaperManagerImpl) r1
            java.lang.String r0 = r1.getFbeWallpaperIntelligentCrop(r0)
            android.util.Log.d(r5, r7)
            goto L74
        L5e:
            android.app.WallpaperManager r6 = r9.mWallpaperManager
            int r1 = r6.semGetWallpaperType(r1)
            r6 = 3
            if (r1 != r6) goto L73
            com.android.systemui.pluginlock.PluginWallpaperManager r1 = r9.mPluginWallpaperManager
            com.android.systemui.pluginlock.PluginWallpaperManagerImpl r1 = (com.android.systemui.pluginlock.PluginWallpaperManagerImpl) r1
            java.lang.String r0 = r1.getFbeWallpaperIntelligentCrop(r0)
            android.util.Log.d(r5, r7)
            goto L74
        L73:
            r0 = r4
        L74:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto La5
            boolean r1 = r9.isFbeWallpaper(r3)
            if (r1 != 0) goto La5
            com.android.systemui.pluginlock.PluginWallpaperManager r1 = r9.mPluginWallpaperManager
            com.android.systemui.pluginlock.PluginWallpaperManagerImpl r1 = (com.android.systemui.pluginlock.PluginWallpaperManagerImpl) r1
            boolean r1 = r1.isDynamicWallpaperEnabled(r3)
            if (r1 != 0) goto La5
            android.app.WallpaperManager r0 = r9.mWallpaperManager
            int r9 = r9.mCurrentUserId
            android.os.Bundle r9 = r0.getWallpaperExtras(r2, r9)
            if (r9 != 0) goto L9a
            java.lang.String r9 = "getIntelligentCropHints: extras is null."
            android.util.Log.d(r5, r9)
            return r4
        L9a:
            java.lang.String r0 = "cropHints"
            java.lang.String r0 = r9.getString(r0)
            java.lang.String r9 = "getIntelligentCropHints: from WMS."
            android.util.Log.d(r5, r9)
        La5:
            java.util.ArrayList r9 = com.android.systemui.wallpaper.utils.IntelligentCropHelper.parseCropHints(r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.view.KeyguardImageWallpaper.getIntelligentCropHints():java.util.ArrayList");
    }

    public final Bitmap getOperatorWallpaper() {
        File oMCWallpaperFile = WallpaperManager.getOMCWallpaperFile(this.mContext, 2);
        File cSCWallpaperFile = WallpaperManager.getCSCWallpaperFile(this.mContext, 2, null, null);
        if (oMCWallpaperFile != null && oMCWallpaperFile.exists()) {
            return BitmapFactory.decodeFile(oMCWallpaperFile.getAbsolutePath());
        }
        if (cSCWallpaperFile == null || !cSCWallpaperFile.exists()) {
            return null;
        }
        return BitmapFactory.decodeFile(cSCWallpaperFile.getAbsolutePath());
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final Bitmap getWallpaperBitmap() {
        Bitmap bitmap = null;
        try {
            bitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
            draw(new Canvas(bitmap));
            return bitmap;
        } catch (Throwable th) {
            th.printStackTrace();
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.recycle();
            }
            return super.getWallpaperBitmap();
        }
    }

    public final boolean init(int i) {
        float f;
        float f2;
        this.mViewWidth = (getWidth() - ((FrameLayout) this).mPaddingLeft) - ((FrameLayout) this).mPaddingRight;
        this.mViewHeight = (getHeight() - ((FrameLayout) this).mPaddingTop) - ((FrameLayout) this).mPaddingBottom;
        try {
            if (!checkPreCondition(i)) {
                Log.e("KeyguardImageWallpaper", "init: Fail to check precondition");
                this.mLastRight = -1;
                this.mLastBottom = -1;
                this.mDrawingState = 2;
                return false;
            }
            this.mBitmapWidth = WallpaperUtils.getCachedWallpaper(i).getWidth();
            int height = WallpaperUtils.getCachedWallpaper(i).getHeight();
            this.mBitmapHeight = height;
            int i2 = this.mBitmapWidth;
            int i3 = this.mViewHeight;
            int i4 = i2 * i3;
            int i5 = this.mViewWidth;
            if (i4 > i5 * height) {
                f = i3;
                f2 = height;
            } else {
                f = i5;
                f2 = i2;
            }
            float f3 = (f / f2) * 1.0f;
            float f4 = (i5 - (i2 * f3)) * 0.5f;
            float f5 = (i3 - (height * f3)) * 0.5f;
            this.mOriginDx = Math.round(f4);
            this.mOriginDy = Math.round(f5);
            this.mDrawMatrix.setScale(f3, f3);
            this.mDrawMatrix.postTranslate(this.mOriginDx, this.mOriginDy);
            Log.d("KeyguardImageWallpaper", "init: mBitmapWidth = " + this.mBitmapWidth);
            Log.d("KeyguardImageWallpaper", "init: mBitmapHeight = " + this.mBitmapHeight);
            Log.d("KeyguardImageWallpaper", "init: mViewWidth = " + this.mViewWidth);
            Log.d("KeyguardImageWallpaper", "init: mViewHeight = " + this.mViewHeight);
            Log.d("KeyguardImageWallpaper", "init: scale = " + f3);
            Log.d("KeyguardImageWallpaper", "init: dx = " + f4);
            Log.d("KeyguardImageWallpaper", "init: dy = " + f5);
            WallpaperResultCallback wallpaperResultCallback = this.mWallpaperResultCallback;
            if (wallpaperResultCallback != null) {
                wallpaperResultCallback.onPreviewReady();
            }
            invalidate();
            return true;
        } catch (Exception e) {
            Log.e("KeyguardImageWallpaper", "init: which = " + i);
            e.printStackTrace();
            return false;
        }
    }

    public final boolean isFbeWallpaper(int i) {
        if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isFbeRequired(i) && ((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isFbeWallpaperAvailable(i)) {
            return true;
        }
        return false;
    }

    public final boolean isRotationRequired() {
        String str;
        boolean z;
        boolean z2;
        if (SystemUIWallpaper.isSubDisplay()) {
            str = "sub_display_lockscreen_wallpaper_transparency";
        } else {
            str = "lockscreen_wallpaper_transparent";
        }
        if (Settings.System.getInt(this.mContext.getContentResolver(), str, 1) == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        if (LsRune.WALLPAPER_ROTATABLE_WALLPAPER && !SystemUIWallpaper.isSubDisplay() && ((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isDynamicWallpaperEnabled()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            return true;
        }
        return false;
    }

    public final boolean isSmartCropRequired() {
        String str;
        boolean z;
        int i;
        if (SystemUIWallpaper.isSubDisplay()) {
            str = "sub_display_lockscreen_wallpaper_transparency";
        } else {
            str = "lockscreen_wallpaper_transparent";
        }
        if (Settings.System.getInt(this.mContext.getContentResolver(), str, 1) == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (SystemUIWallpaper.isSubDisplay()) {
                i = 16;
            } else {
                i = 4;
            }
            Context context = this.mContext;
            boolean z2 = WallpaperUtils.mIsEmergencyMode;
            if (!(!TextUtils.isEmpty(new SemWallpaperProperties(context, i | 2, context.getUserId()).getImageCategory()))) {
                return true;
            }
        }
        if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isCustomPackApplied()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d("KeyguardImageWallpaper", "onAttachedToWindow: " + this);
        this.mExecutor.execute(new KeyguardImageWallpaper$$ExternalSyntheticLambda1(this, true));
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onBackDropLayoutChange() {
        if (!canRotate()) {
            Log.d("KeyguardImageWallpaper", "onBackDropLayoutChange: Rotation of lockscreen wallpaper is not allowed.");
            return;
        }
        int i = this.mCurDisplayInfo.rotation;
        updateDisplayInfo();
        awaitCall();
        int i2 = this.mCurDisplayInfo.rotation;
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("onBackDropLayoutChange: prevRotation = ", i, ", curRotation = ", i2, "KeyguardImageWallpaper");
        if (i != i2) {
            this.mNeedToRedraw = true;
        }
        updateRotationState();
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        if (this.mOrientation != configuration.orientation) {
            this.mNeedToRedraw = true;
        }
        super.onConfigurationChanged(configuration);
        updateRotationState();
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d("KeyguardImageWallpaper", "onDetachedFromWindow: " + this);
        this.mExecutor.execute(new KeyguardImageWallpaper$$ExternalSyntheticLambda0(this));
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        boolean z3;
        Point point;
        boolean z4;
        int i6;
        boolean z5;
        Bitmap bitmap;
        Bitmap bitmap2;
        WallpaperResultCallback wallpaperResultCallback;
        boolean z6;
        Paint paint;
        SequentialAnimator.AnimatedValue animatedValue;
        float f;
        SequentialAnimator.AnimatedValue animatedValue2;
        this.mIsDrawRequested.set(false);
        if (LsRune.WALLPAPER_SUB_WATCHFACE) {
            i = 6;
        } else {
            i = WallpaperUtils.sCurrentWhich;
        }
        if (WallpaperUtils.isCachedWallpaperAvailable(i)) {
            Bitmap cachedWallpaper = WallpaperUtils.getCachedWallpaper(i);
            if (this.mBitmapWidth != 0 && this.mBitmapHeight != 0) {
                canvas.save();
                int i7 = this.mCurDisplayInfo.rotation;
                if (i7 != 1 && i7 != 3 && this.mOrientation != 2) {
                    z = false;
                } else {
                    z = true;
                }
                TiltColorController tiltColorController = this.mTiltColorController;
                if (tiltColorController != null && tiltColorController.mIsEnable) {
                    Paint paint2 = this.mDrawPaint;
                    tiltColorController.mIsDrawRequested.set(false);
                    if (tiltColorController.mIsEnable) {
                        if (paint2 != null) {
                            boolean z7 = tiltColorController.mNeedUpdateColorFilter;
                            SequentialAnimator.AnimatedValue animatedValue3 = tiltColorController.mAlpha;
                            if (z7) {
                                tiltColorController.mColorMatrix.reset();
                                tiltColorController.mColorMatrix.setSaturation(tiltColorController.mSaturation.currentValue);
                                float min = (Math.min(Math.max(tiltColorController.mHue.currentValue, -180.0f), 180.0f) / 180.0f) * 3.1415927f;
                                if (min != 0.0f) {
                                    animatedValue2 = animatedValue3;
                                    double d = min;
                                    paint = paint2;
                                    float cos = (float) Math.cos(d);
                                    float sin = (float) Math.sin(d);
                                    float f2 = (cos * (-0.715f)) + 0.715f;
                                    float f3 = ((-0.072f) * cos) + 0.072f;
                                    i3 = 4;
                                    float f4 = ((-0.213f) * cos) + 0.213f;
                                    i2 = 16;
                                    tiltColorController.mColorMatrix.postConcat(new ColorMatrix(new float[]{(sin * (-0.213f)) + (0.787f * cos) + 0.213f, ((-0.715f) * sin) + f2, (sin * 0.928f) + f3, 0.0f, 0.0f, (0.143f * sin) + f4, (0.14f * sin) + (0.28500003f * cos) + 0.715f, ((-0.283f) * sin) + f3, 0.0f, 0.0f, ((-0.787f) * sin) + f4, (0.715f * sin) + f2, (sin * 0.072f) + (cos * 0.928f) + 0.072f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f}));
                                } else {
                                    paint = paint2;
                                    animatedValue2 = animatedValue3;
                                    i2 = 16;
                                    i3 = 4;
                                }
                                ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(tiltColorController.mColorMatrix);
                                tiltColorController.mColorFilter = colorMatrixColorFilter;
                                tiltColorController.mPaint.setColorFilter(colorMatrixColorFilter);
                                animatedValue = animatedValue2;
                                f = 255.0f;
                                tiltColorController.mPaint.setAlpha((int) (animatedValue.currentValue * 255.0f));
                            } else {
                                paint = paint2;
                                animatedValue = animatedValue3;
                                f = 255.0f;
                                i2 = 16;
                                i3 = 4;
                            }
                            Paint paint3 = paint;
                            paint3.setColorFilter(tiltColorController.mColorFilter);
                            paint3.setAlpha((int) (animatedValue.currentValue * f));
                        } else {
                            i2 = 16;
                            i3 = 4;
                        }
                        float f5 = tiltColorController.mScale.currentValue;
                        if (0.0f != f5) {
                            int width = canvas.getWidth();
                            int height = canvas.getHeight();
                            canvas.scale(f5, f5, width / 2, height / 2);
                            if (width < height) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            float f6 = (-(Math.min(Math.min(width, height) * 0.05f, Math.abs(width - height) / 2.0f) * tiltColorController.mTiltScale.currentValue)) / f5;
                            if (z6) {
                                canvas.translate(f6, 0.0f);
                            } else {
                                canvas.translate(0.0f, f6);
                            }
                        }
                        if (tiltColorController.mIsGyroAllowed) {
                            TiltColorController.AnonymousClass2 anonymousClass2 = tiltColorController.mTiltHandler;
                            if (anonymousClass2.hasMessages(0)) {
                                anonymousClass2.removeMessages(0);
                                anonymousClass2.handleMessage(null);
                            }
                        }
                    } else {
                        i2 = 16;
                        i3 = 4;
                    }
                    this.mAlphaPaint.setColorFilter(this.mDrawPaint.getColorFilter());
                } else {
                    i2 = 16;
                    i3 = 4;
                    this.mDrawPaint.setAlpha(255);
                    this.mDrawPaint.setColorFilter(null);
                    this.mAlphaPaint.setColorFilter(null);
                }
                if (!SystemUIWallpaper.isSubDisplay()) {
                    i2 = i3;
                }
                if (cachedWallpaper != null) {
                    i4 = cachedWallpaper.getWidth();
                    i5 = cachedWallpaper.getHeight();
                    String filterData = ColorDecorFilterHelper.getFilterData(i2 | 2, this.mContext, this.mCurrentUserId);
                    if (!TextUtils.isEmpty(filterData)) {
                        cachedWallpaper = ColorDecorFilterHelper.createFilteredBitmap(cachedWallpaper, filterData);
                    } else {
                        Context context = this.mContext;
                        PluginWallpaperManager pluginWallpaperManager = this.mPluginWallpaperManager;
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        Boolean canApplyFilterOnHome = HighlightFilterHelper.canApplyFilterOnHome(i2);
                        if (canApplyFilterOnHome != null && canApplyFilterOnHome.booleanValue()) {
                            if (((PluginWallpaperManagerImpl) pluginWallpaperManager).isDynamicWallpaperEnabled()) {
                                Log.d("HighlightFilterHelper", "canApplyFilterOnLock: DLS enabled");
                                canApplyFilterOnHome = Boolean.FALSE;
                            } else if (!WallpaperManager.getInstance(context).isSystemAndLockPaired(i2)) {
                                Log.d("HighlightFilterHelper", "canApplyFilterOnLock: Home & Lock is not paired.");
                                canApplyFilterOnHome = Boolean.FALSE;
                            } else {
                                StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("canApplyFilterOnLock: true, mode = ", i2, ", elapsed = ");
                                m.append(SystemClock.elapsedRealtime() - elapsedRealtime);
                                Log.d("HighlightFilterHelper", m.toString());
                                canApplyFilterOnHome = Boolean.TRUE;
                            }
                        } else {
                            Log.d("HighlightFilterHelper", "canApplyFilterOnLock: Not applied on Home. result = " + canApplyFilterOnHome);
                        }
                        if (canApplyFilterOnHome == null) {
                            canApplyFilterOnHome = Boolean.FALSE;
                        }
                        if (canApplyFilterOnHome.booleanValue()) {
                            cachedWallpaper = HighlightFilterHelper.createFilteredBitmap(cachedWallpaper, HighlightFilterHelper.getFilterAmount(this.mSettingsHelper));
                        } else {
                            z2 = false;
                        }
                    }
                    z2 = true;
                } else {
                    z2 = false;
                    i4 = 0;
                    i5 = 0;
                }
                float[] wallpaperFilterColor = ImageDarkModeFilter.getWallpaperFilterColor(this.mContext, (SemWallpaperColors) this.mColorProvider.get());
                if (wallpaperFilterColor != null) {
                    z3 = false;
                    int argb = Color.argb(wallpaperFilterColor[3], wallpaperFilterColor[0], wallpaperFilterColor[1], wallpaperFilterColor[2]);
                    this.mDrawPaint.setColorFilter(new PorterDuffColorFilter(argb, PorterDuff.Mode.SRC_OVER));
                    Log.i("KeyguardImageWallpaper", "onDraw: draw filter color on ImageWallpaper " + argb);
                } else {
                    z3 = false;
                    this.mDrawPaint.setColorFilter(null);
                }
                ArrayList intelligentCropHints = getIntelligentCropHints();
                awaitCall();
                DisplayInfo displayInfo = this.mCurDisplayInfo;
                if (displayInfo == null) {
                    point = null;
                } else {
                    point = new Point(displayInfo.logicalWidth, displayInfo.logicalHeight);
                }
                Rect nearestCropHint = IntelligentCropHelper.getNearestCropHint(point, intelligentCropHints);
                if (nearestCropHint != null) {
                    z4 = true;
                } else {
                    z4 = z3;
                }
                Matrix matrix = new Matrix();
                if (nearestCropHint != null) {
                    float width2 = nearestCropHint.width();
                    float height2 = nearestCropHint.height();
                    float max = Math.max(this.mViewWidth / width2, this.mViewHeight / height2);
                    float f7 = (-nearestCropHint.left) * max;
                    z5 = z2;
                    if (width2 * max > this.mViewWidth) {
                        i6 = i;
                        bitmap = cachedWallpaper;
                        f7 = (float) (f7 - ((r12 - r3) / 2.0d));
                    } else {
                        i6 = i;
                        bitmap = cachedWallpaper;
                    }
                    float f8 = (-nearestCropHint.top) * max;
                    if (height2 * max > this.mViewHeight) {
                        f8 = (float) (f8 - ((r13 - r2) / 2.0d));
                    }
                    matrix.postScale(max, max);
                    matrix.postTranslate(Math.round(f7), Math.round(f8));
                } else {
                    i6 = i;
                    z5 = z2;
                    bitmap = cachedWallpaper;
                    matrix = this.mDrawMatrix;
                }
                StringBuilder m2 = GridLayoutManager$$ExternalSyntheticOutline0.m("onDraw : bmpW=", i4, ", bmpH=", i5, ", src=");
                m2.append(nearestCropHint);
                m2.append(", mViewWidth=");
                m2.append(this.mViewWidth);
                m2.append(", mViewHeight=");
                RecyclerView$$ExternalSyntheticOutline0.m(m2, this.mViewHeight, "KeyguardImageWallpaper");
                TiltColorController tiltColorController2 = this.mTiltColorController;
                if (tiltColorController2 != null && tiltColorController2.mIsEnable) {
                    bitmap2 = bitmap;
                    canvas.drawBitmap(bitmap2, matrix, this.mAlphaPaint);
                } else {
                    bitmap2 = bitmap;
                    if (z && canRotate() && !z4 && isSmartCropRequired()) {
                        updateSmartCropRectIfNeeded(i6);
                        StringBuilder sb = new StringBuilder("onDraw: landscape, mSmartCroppedResult=");
                        sb.append(this.mSmartCroppedResult);
                        sb.append(" viewW=");
                        sb.append(this.mViewWidth);
                        sb.append(" viewH=");
                        TooltipPopup$$ExternalSyntheticOutline0.m(sb, this.mViewHeight, "KeyguardImageWallpaper");
                        if (this.mSmartCroppedResult != null) {
                            canvas.drawBitmap(bitmap2, this.mSmartCroppedResult, new RectF(0.0f, 0.0f, this.mViewWidth, this.mViewHeight), this.mDrawPaint);
                        } else {
                            canvas.drawBitmap(bitmap2, matrix, this.mDrawPaint);
                        }
                    } else {
                        Log.d("KeyguardImageWallpaper", "onDraw: cur bitmap");
                        canvas.drawBitmap(bitmap2, matrix, this.mDrawPaint);
                    }
                }
                this.mDrawingState = 1;
                Bitmap bitmap3 = this.mOldBitmap;
                if (bitmap3 != null && bitmap3 != bitmap2) {
                    recycleBitmap(bitmap3);
                    this.mOldBitmap = null;
                }
                if (z5) {
                    recycleBitmap(bitmap2);
                }
                canvas.restore();
                this.mNeedToRedraw = false;
                if (LsRune.WALLPAPER_CAPTURED_BLUR && DeviceState.isCapturedBlurAllowed() && (wallpaperResultCallback = this.mWallpaperResultCallback) != null) {
                    wallpaperResultCallback.onDrawFinished();
                    return;
                }
                return;
            }
            Log.e("KeyguardImageWallpaper", "mBitmapWidth == 0 || mBitmapHeight == 0");
            return;
        }
        Log.e("KeyguardImageWallpaper", "onDraw: Cached wallpaper is null or is recycled");
        this.mDrawingState = 2;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3;
        int i5;
        int i6;
        super.onLayout(z, i, i2, i3, i4);
        StringBuilder m = KeyguardFMMViewController$$ExternalSyntheticOutline0.m("onLayout:  changed = [", z, "], left = [", i, "], top = [");
        AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(m, i2, "], right = [", i3, "], bottom = [");
        m.append(i4);
        m.append("]");
        Log.d("KeyguardImageWallpaper", m.toString());
        Log.d("KeyguardImageWallpaper", "onLayout: mLastRight = " + this.mLastRight + ", mLastBottom = " + this.mLastBottom);
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("onLayout: mNeedToRedraw = "), this.mNeedToRedraw, "KeyguardImageWallpaper");
        if (z && i3 != 0 && i4 != 0) {
            if (WallpaperUtils.isStatusBarHeight(getContext(), this, i4)) {
                Log.d("KeyguardImageWallpaper", "onLayout: It is status bar size. Ignored.");
                return;
            }
            boolean z4 = true;
            boolean z5 = false;
            if (this.mLastRight == i3 && this.mLastBottom == i4) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (!z2 && !this.mNeedToRedraw) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !LsRune.WALLPAPER_SUB_WATCHFACE) {
                if (!isRotationRequired() || (i6 = this.mLastRight) == 0 || i6 == i3 || i6 == i4) {
                    z4 = false;
                }
                z5 = z4;
            }
            if (z3) {
                ActionBarContextView$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("onLayout: redraw needed. ", i3, ", ", i4, " , needSmartCrop = "), z5, "KeyguardImageWallpaper");
                if (LsRune.WALLPAPER_SUB_WATCHFACE) {
                    i5 = 6;
                } else {
                    i5 = WallpaperUtils.sCurrentWhich;
                }
                if (z5) {
                    this.mSmartCroppedResult = null;
                    updateSmartCropRectIfNeeded(this.mCurrentWhich);
                }
                init(i5);
                this.mLastRight = i3;
                this.mLastBottom = i4;
            }
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onPause() {
        this.mResumed = false;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onResume() {
        int i;
        this.mResumed = true;
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onResume, mDrawingState:"), this.mDrawingState, "KeyguardImageWallpaper");
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && (((i = this.mDrawingState) == 2 || i == 3) && !WallpaperUtils.isCachedWallpaperAvailable(this.mCurrentWhich))) {
            Log.d("KeyguardImageWallpaper", "onResume, reload");
            this.mDrawingState = 0;
            updateWallpaper(this.mCurrentWhich);
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        if (canRotate()) {
            if (layoutParams.width != -1 || layoutParams.height != -1) {
                this.mFixedOrientationController.clearPortraitRotation();
                return;
            }
            return;
        }
        this.mFixedOrientationController.applyPortraitRotation();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        ControlsListingControllerImpl$$ExternalSyntheticOutline0.m("onWindowFocusChanged: ", z, "KeyguardImageWallpaper");
        if (LsRune.WALLPAPER_SUB_WATCHFACE && z) {
            init(6);
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper
    public final void preInit() {
        Consumer consumer = this.mWcgConsumer;
        if (consumer != null) {
            consumer.accept(Boolean.TRUE);
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void setTransitionAnimationListener(KeyguardWallpaperController.AnonymousClass4 anonymousClass4) {
        this.mTransitionAnimationListener = anonymousClass4;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void update() {
        int i;
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        if (this.mCurrentUserId != currentUser) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("update userId=", currentUser, "KeyguardImageWallpaper");
            this.mCurrentUserId = currentUser;
        }
        this.mUseCache = false;
        if (LsRune.WALLPAPER_SUB_WATCHFACE) {
            i = 6;
        } else {
            i = WallpaperUtils.sCurrentWhich;
        }
        updateWallpaper(i);
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void updateDrawState(boolean z) {
        if (this.mTiltColorController != null) {
            Log.d("KeyguardImageWallpaper", "updateDrawState: [" + z + "]");
            TiltColorController tiltColorController = this.mTiltColorController;
            tiltColorController.getClass();
            StringBuilder sb = new StringBuilder("new: ");
            sb.append(z);
            sb.append(" prev:");
            NotificationListener$$ExternalSyntheticOutline0.m(sb, tiltColorController.mPrevState, "TiltColorController");
            if (tiltColorController.mIsEnable) {
                if (z) {
                    tiltColorController.startEnterAnimation(true);
                } else if (!((KeyguardFastBioUnlockController) Dependency.get(KeyguardFastBioUnlockController.class)).isFastWakeAndUnlockMode()) {
                    tiltColorController.startEnterAnimation(false);
                }
            }
            tiltColorController.mPrevState = z;
        }
    }

    public final void updateRotationState() {
        if (!canRotate()) {
            this.mFixedOrientationController.applyPortraitRotation();
            return;
        }
        FixedOrientationController fixedOrientationController = this.mFixedOrientationController;
        if (fixedOrientationController.mIsFixedOrientationApplied) {
            fixedOrientationController.clearPortraitRotation();
        }
    }

    public final void updateSmartCropRectIfNeeded(int i) {
        Rect cachedSmartCroppedRect;
        boolean z;
        if (((PluginWallpaperManagerImpl) this.mPluginWallpaperManager).isCustomPackApplied()) {
            cachedSmartCroppedRect = this.mSmartCroppedResult;
        } else {
            cachedSmartCroppedRect = WallpaperUtils.getCachedSmartCroppedRect(i);
        }
        this.mSmartCroppedResult = cachedSmartCroppedRect;
        if (cachedSmartCroppedRect != null && cachedSmartCroppedRect.right - cachedSmartCroppedRect.left > this.mBitmapWidth) {
            Log.d("KeyguardImageWallpaper", "updateSmartCropRectIfNeeded: Invalid smart crop rect.");
            this.mSmartCroppedResult = null;
        }
        if (this.mSmartCroppedResult == null) {
            z = true;
        } else {
            z = false;
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("updateSmartCropRectIfNeeded() needToUpdateCropRect: ", z, "KeyguardImageWallpaper");
        if (z) {
            this.mImageSmartCropper.updateSmartCropRect(WallpaperUtils.getCachedWallpaper(i), i);
            this.mSmartCroppedResult = this.mImageSmartCropper.mCropResult;
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [com.android.systemui.wallpaper.view.KeyguardImageWallpaper$1] */
    public final void updateWallpaper(int i) {
        StringBuilder sb = new StringBuilder("updateWallpaper() START useCache=");
        sb.append(this.mUseCache);
        sb.append(" , user id = ");
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(sb, this.mCurrentUserId, " , which = ", i, "KeyguardImageWallpaper");
        this.mCurrentWhich = i;
        this.mDrawingState = 0;
        final int i2 = this.mCurrentUserId;
        AnonymousClass1 anonymousClass1 = this.mWallpaperUpdator;
        if (anonymousClass1 != null && !anonymousClass1.isCancelled()) {
            Log.d("KeyguardImageWallpaper", "updateWallpaper: cancel update wallpaper");
            cancel(true);
            this.mWallpaperUpdator = null;
        }
        this.mExecutor.execute(new KeyguardImageWallpaper$$ExternalSyntheticLambda1(this, false));
        this.mWallpaperUpdator = new AsyncTask() { // from class: com.android.systemui.wallpaper.view.KeyguardImageWallpaper.1
            public final int seq;

            {
                int i3 = KeyguardImageWallpaper.this.mUpdateWallpaperSequence + 1;
                KeyguardImageWallpaper.this.mUpdateWallpaperSequence = i3;
                this.seq = i3;
            }

            /* JADX WARN: Can't wrap try/catch for region: R(24:1|(1:3)(1:208)|4|(1:207)(1:8)|9|(2:11|(1:205)(4:15|16|(3:190|191|(5:195|(1:197)|198|57|(2:59|60)(2:62|(2:64|65)(2:66|(2:68|69)(2:70|(9:78|(4:81|(1:83)(1:103)|84|(2:86|87)(2:88|(4:90|(3:96|97|(1:99))|92|(2:94|95))(1:102)))|104|(1:135)(1:107)|108|(1:110)|(2:112|(1:114))(8:117|(1:119)|120|(1:122)(1:134)|123|(1:125)|126|(1:133)(2:130|(1:132)))|115|116)(2:76|77))))))|18))(1:206)|19|(1:21)(1:189)|22|(1:24)(1:188)|(2:26|(5:28|(1:30)(1:176)|(1:32)(3:169|(1:171)(1:175)|(1:173)(1:174))|33|(1:35)(12:36|37|38|(3:147|148|(1:150)(2:151|(1:153)))(1:40)|41|(1:43)(2:138|(2:140|(6:145|(5:46|(1:48)|49|(1:54)|136)(1:137)|55|56|57|(0)(0)))(1:146))|44|(0)(0)|55|56|57|(0)(0)))(2:177|(2:184|(1:186))(1:183)))|187|37|38|(0)(0)|41|(0)(0)|44|(0)(0)|55|56|57|(0)(0)|(1:(0))) */
            /* JADX WARN: Code restructure failed: missing block: B:168:0x0266, code lost:
            
                r14 = th;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:137:0x0247 A[Catch: all -> 0x0266, OutOfMemoryError -> 0x0269, TRY_LEAVE, TryCatch #7 {OutOfMemoryError -> 0x0269, all -> 0x0266, blocks: (B:150:0x01ac, B:41:0x01d7, B:43:0x01e1, B:46:0x020a, B:48:0x0213, B:49:0x0216, B:51:0x0231, B:54:0x0238, B:136:0x023e, B:137:0x0247, B:138:0x01e7, B:140:0x01eb, B:142:0x01f5, B:145:0x01fd, B:146:0x0202, B:151:0x01ba, B:153:0x01c0), top: B:38:0x0187 }] */
            /* JADX WARN: Removed duplicated region for block: B:138:0x01e7 A[Catch: all -> 0x0266, OutOfMemoryError -> 0x0269, TryCatch #7 {OutOfMemoryError -> 0x0269, all -> 0x0266, blocks: (B:150:0x01ac, B:41:0x01d7, B:43:0x01e1, B:46:0x020a, B:48:0x0213, B:49:0x0216, B:51:0x0231, B:54:0x0238, B:136:0x023e, B:137:0x0247, B:138:0x01e7, B:140:0x01eb, B:142:0x01f5, B:145:0x01fd, B:146:0x0202, B:151:0x01ba, B:153:0x01c0), top: B:38:0x0187 }] */
            /* JADX WARN: Removed duplicated region for block: B:147:0x0189 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:188:0x00b0  */
            /* JADX WARN: Removed duplicated region for block: B:189:0x00a7  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x00a5  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x00ae  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00b3  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x01d6  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x01e1 A[Catch: all -> 0x0266, OutOfMemoryError -> 0x0269, TryCatch #7 {OutOfMemoryError -> 0x0269, all -> 0x0266, blocks: (B:150:0x01ac, B:41:0x01d7, B:43:0x01e1, B:46:0x020a, B:48:0x0213, B:49:0x0216, B:51:0x0231, B:54:0x0238, B:136:0x023e, B:137:0x0247, B:138:0x01e7, B:140:0x01eb, B:142:0x01f5, B:145:0x01fd, B:146:0x0202, B:151:0x01ba, B:153:0x01c0), top: B:38:0x0187 }] */
            /* JADX WARN: Removed duplicated region for block: B:46:0x020a A[Catch: all -> 0x0266, OutOfMemoryError -> 0x0269, TryCatch #7 {OutOfMemoryError -> 0x0269, all -> 0x0266, blocks: (B:150:0x01ac, B:41:0x01d7, B:43:0x01e1, B:46:0x020a, B:48:0x0213, B:49:0x0216, B:51:0x0231, B:54:0x0238, B:136:0x023e, B:137:0x0247, B:138:0x01e7, B:140:0x01eb, B:142:0x01f5, B:145:0x01fd, B:146:0x0202, B:151:0x01ba, B:153:0x01c0), top: B:38:0x0187 }] */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0287  */
            /* JADX WARN: Removed duplicated region for block: B:62:0x028e  */
            /* JADX WARN: Type inference failed for: r1v0, types: [int] */
            /* JADX WARN: Type inference failed for: r1v26, types: [java.lang.AutoCloseable] */
            /* JADX WARN: Type inference failed for: r1v27 */
            /* JADX WARN: Type inference failed for: r1v28 */
            /* JADX WARN: Type inference failed for: r1v30 */
            /* JADX WARN: Type inference failed for: r4v23, types: [java.lang.StringBuilder] */
            @Override // android.os.AsyncTask
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object doInBackground(java.lang.Object[] r15) {
                /*
                    Method dump skipped, instructions count: 1113
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.view.KeyguardImageWallpaper.AnonymousClass1.doInBackground(java.lang.Object[]):java.lang.Object");
            }

            @Override // android.os.AsyncTask
            public final void onPostExecute(Object obj) {
                LoaderResult loaderResult = (LoaderResult) obj;
                super.onPostExecute(loaderResult);
                if (loaderResult != null && loaderResult.success) {
                    KeyguardImageWallpaper keyguardImageWallpaper = KeyguardImageWallpaper.this;
                    int i3 = KeyguardImageWallpaper.$r8$clinit;
                    boolean init = keyguardImageWallpaper.init(loaderResult.which);
                    KeyguardImageWallpaper.this.updateRotationState();
                    Log.d("KeyguardImageWallpaper", "updateWallpaper() DONE, init = " + init);
                    return;
                }
                Log.d("KeyguardImageWallpaper", "return onPostExecute: result is null or fail");
            }
        };
        if (this.mUseCache && WallpaperUtils.isCachedWallpaperAvailable(i)) {
            WallpaperResultCallback wallpaperResultCallback = this.mWallpaperResultCallback;
            if (wallpaperResultCallback != null) {
                wallpaperResultCallback.onDelegateBitmapReady(WallpaperUtils.getCachedWallpaper(WallpaperUtils.sCurrentWhich));
                return;
            }
            return;
        }
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LoaderResult {
        public final Bitmap bitmap;
        public final boolean fromPluginLock;
        public final boolean success;
        public final String wallpaerPath;
        public final int which;

        public LoaderResult(boolean z, Bitmap bitmap, boolean z2) {
            this.success = z;
            this.bitmap = bitmap;
            this.which = 2;
            this.fromPluginLock = z2;
            this.wallpaerPath = null;
        }

        public LoaderResult(boolean z, Bitmap bitmap, boolean z2, String str, int i) {
            this.success = z;
            this.bitmap = bitmap;
            this.which = i;
            this.fromPluginLock = z2;
            this.wallpaerPath = str;
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void updateBlurState(boolean z) {
    }
}
