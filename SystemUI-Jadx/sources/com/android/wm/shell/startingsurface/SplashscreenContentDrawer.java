package com.android.wm.shell.startingsurface;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.ICustomFrequencyManager;
import android.os.Message;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.Trace;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.ArrayMap;
import android.util.MathUtils;
import android.util.Slog;
import android.view.Choreographer;
import android.view.Display;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.window.SplashScreenView;
import android.window.StartingWindowInfo;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0;
import com.android.internal.R;
import com.android.internal.graphics.palette.Palette;
import com.android.internal.graphics.palette.Quantizer;
import com.android.internal.graphics.palette.VariationalKMeansQuantizer;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.IconProvider;
import com.android.wm.shell.animation.Interpolators;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.startingsurface.SplashScreenExitAnimationUtils;
import com.android.wm.shell.startingsurface.SplashscreenContentDrawer;
import com.samsung.android.knox.lockscreen.EmergencyPhoneWidget;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.android.rune.CoreRune;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.IntSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplashscreenContentDrawer {
    public static final int CLEAR_PREALOD_ICON_TIMEOUT_MILLIS = ViewConfiguration.getLongPressTimeout() + 200;
    public static boolean mIsNightMode = false;
    public static int mThemeBackgroundColor;
    public int mBrandingImageHeight;
    public int mBrandingImageWidth;
    final ColorCache mColorCache;
    public final Context mContext;
    public int mDefaultIconSize;
    public final HighResIconProvider mHighResIconProvider;
    public int mIconSize;
    public int mLastPackageContextConfigHash;
    public final PreloadIconData mPreloadIcon;
    public final SettingObserver mSettingObserver;
    public final ShellExecutor mSplashScreenExecutor;
    public final Handler mSplashscreenWorkerHandler;
    public String mThemeIconPackageName;
    public String mThemePackageName;
    public final TransactionPool mTransactionPool;
    public final SplashScreenWindowAttrs mTmpAttrs = new SplashScreenWindowAttrs();
    public final PreLoadIconDataHandler mHandler = new PreLoadIconDataHandler(this, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public class ColorCache extends BroadcastReceiver {
        public final ArrayMap mColorMap = new ArrayMap();

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public class Cache {
            public final int mHash;
            public int mReuseCount;

            public Cache(int i) {
                this.mHash = i;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class Colors {
            public final IconColor[] mIconColors;
            public final WindowColor[] mWindowColors;

            public /* synthetic */ Colors(int i) {
                this();
            }

            private Colors() {
                this.mWindowColors = new WindowColor[2];
                this.mIconColors = new IconColor[2];
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class IconColor extends Cache {
            public final int mBgColor;
            public final int mFgColor;
            public final float mFgNonTranslucentRatio;
            public final boolean mIsBgComplex;
            public final boolean mIsBgGrayscale;

            public IconColor(int i, int i2, int i3, boolean z, boolean z2, float f) {
                super(i);
                this.mFgColor = i2;
                this.mBgColor = i3;
                this.mIsBgComplex = z;
                this.mIsBgGrayscale = z2;
                this.mFgNonTranslucentRatio = f;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class WindowColor extends Cache {
            public final int mBgColor;

            public WindowColor(int i, int i2) {
                super(i);
                this.mBgColor = i2;
            }
        }

        public ColorCache(Context context, Handler handler) {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addDataScheme("package");
            context.registerReceiverAsUser(this, UserHandle.ALL, intentFilter, null, handler);
        }

        public static Cache getCache(Cache[] cacheArr, int i, int[] iArr) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 = 0; i3 < 2; i3++) {
                Cache cache = cacheArr[i3];
                if (cache == null) {
                    iArr[0] = i3;
                    i2 = -1;
                } else {
                    if (cache.mHash == i) {
                        cache.mReuseCount++;
                        return cache;
                    }
                    int i4 = cache.mReuseCount;
                    if (i4 < i2) {
                        iArr[0] = i3;
                        i2 = i4;
                    }
                }
            }
            return null;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Uri data = intent.getData();
            if (data != null) {
                this.mColorMap.remove(data.getEncodedSchemeSpecificPart());
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DrawableColorTester {
        public final ColorTester mColorChecker;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public interface ColorTester {
            int getDominantColor();

            boolean isComplexColor();

            boolean isGrayscale();

            float passFilterRatio();
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class ComplexDrawableTester implements ColorTester {
            public static final AlphaFilterQuantizer ALPHA_FILTER_QUANTIZER = new AlphaFilterQuantizer(0);
            public final boolean mFilterTransparent;
            public final Palette mPalette;

            /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
            /* loaded from: classes2.dex */
            public final class AlphaFilterQuantizer implements Quantizer {
                public SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0 mFilter;
                public final Quantizer mInnerQuantizer;
                public float mPassFilterRatio;
                public final SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0 mTranslucentFilter;
                public final SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0 mTransparentFilter;

                public /* synthetic */ AlphaFilterQuantizer(int i) {
                    this();
                }

                public final List getQuantizedColors() {
                    return this.mInnerQuantizer.getQuantizedColors();
                }

                public final void quantize(int[] iArr, int i) {
                    this.mPassFilterRatio = 0.0f;
                    int i2 = 0;
                    int i3 = 0;
                    for (int length = iArr.length - 1; length > 0; length--) {
                        if (this.mFilter.test(iArr[length])) {
                            i3++;
                        }
                    }
                    if (i3 == 0) {
                        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -424415681, 0, null, null);
                        }
                        this.mInnerQuantizer.quantize(iArr, i);
                        return;
                    }
                    this.mPassFilterRatio = i3 / iArr.length;
                    int[] iArr2 = new int[i3];
                    int length2 = iArr.length;
                    while (true) {
                        length2--;
                        if (length2 > 0) {
                            if (this.mFilter.test(iArr[length2])) {
                                iArr2[i2] = iArr[length2];
                                i2++;
                            }
                        } else {
                            this.mInnerQuantizer.quantize(iArr2, i);
                            return;
                        }
                    }
                }

                private AlphaFilterQuantizer() {
                    this.mInnerQuantizer = new VariationalKMeansQuantizer();
                    SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0 splashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0 = new SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0(0);
                    this.mTransparentFilter = splashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0;
                    this.mTranslucentFilter = new SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0(1);
                    this.mFilter = splashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$AlphaFilterQuantizer$$ExternalSyntheticLambda0;
                }
            }

            public ComplexDrawableTester(Drawable drawable, int i) {
                int i2;
                Palette.Builder maximumColorCount;
                Trace.traceBegin(32L, "ComplexDrawableTester");
                Rect copyBounds = drawable.copyBounds();
                int intrinsicWidth = drawable.getIntrinsicWidth();
                int intrinsicHeight = drawable.getIntrinsicHeight();
                int i3 = 40;
                if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                    i3 = Math.min(intrinsicWidth, 40);
                    i2 = Math.min(intrinsicHeight, 40);
                } else {
                    i2 = 40;
                }
                Bitmap createBitmap = Bitmap.createBitmap(i3, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                drawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                drawable.draw(canvas);
                drawable.setBounds(copyBounds);
                boolean z = i != 0;
                this.mFilterTransparent = z;
                if (z) {
                    AlphaFilterQuantizer alphaFilterQuantizer = ALPHA_FILTER_QUANTIZER;
                    if (i != 2) {
                        alphaFilterQuantizer.mFilter = alphaFilterQuantizer.mTransparentFilter;
                    } else {
                        alphaFilterQuantizer.mFilter = alphaFilterQuantizer.mTranslucentFilter;
                    }
                    maximumColorCount = new Palette.Builder(createBitmap, alphaFilterQuantizer).maximumColorCount(5);
                } else {
                    maximumColorCount = new Palette.Builder(createBitmap, (Quantizer) null).maximumColorCount(5);
                }
                this.mPalette = maximumColorCount.generate();
                createBitmap.recycle();
                Trace.traceEnd(32L);
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final int getDominantColor() {
                Palette.Swatch dominantSwatch = this.mPalette.getDominantSwatch();
                if (dominantSwatch != null) {
                    return dominantSwatch.getInt();
                }
                return EmergencyPhoneWidget.BG_COLOR;
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final boolean isComplexColor() {
                if (this.mPalette.getSwatches().size() > 1) {
                    return true;
                }
                return false;
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final boolean isGrayscale() {
                boolean z;
                List swatches = this.mPalette.getSwatches();
                if (swatches != null) {
                    for (int size = swatches.size() - 1; size >= 0; size--) {
                        int i = ((Palette.Swatch) swatches.get(size)).getInt();
                        int red = Color.red(i);
                        int green = Color.green(i);
                        int blue = Color.blue(i);
                        if (red == green && green == blue) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (!z) {
                            return false;
                        }
                    }
                }
                return true;
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final float passFilterRatio() {
                if (this.mFilterTransparent) {
                    return ALPHA_FILTER_QUANTIZER.mPassFilterRatio;
                }
                return 1.0f;
            }
        }

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class SingleColorTester implements ColorTester {
            public final ColorDrawable mColorDrawable;

            public SingleColorTester(ColorDrawable colorDrawable) {
                this.mColorDrawable = colorDrawable;
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final int getDominantColor() {
                return this.mColorDrawable.getColor();
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final boolean isComplexColor() {
                return false;
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final boolean isGrayscale() {
                int color = this.mColorDrawable.getColor();
                int red = Color.red(color);
                int green = Color.green(color);
                int blue = Color.blue(color);
                if (red == green && green == blue) {
                    return true;
                }
                return false;
            }

            @Override // com.android.wm.shell.startingsurface.SplashscreenContentDrawer.DrawableColorTester.ColorTester
            public final float passFilterRatio() {
                return this.mColorDrawable.getAlpha() / 255.0f;
            }
        }

        public DrawableColorTester(Drawable drawable) {
            this(drawable, 0);
        }

        public DrawableColorTester(Drawable drawable, int i) {
            ColorTester complexDrawableTester;
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                if (layerDrawable.getNumberOfLayers() > 0) {
                    if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                        ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 428468608, 0, null, null);
                    }
                    drawable = layerDrawable.getDrawable(0);
                }
            }
            if (drawable == null) {
                int i2 = SplashscreenContentDrawer.mThemeBackgroundColor;
                this.mColorChecker = new SingleColorTester(new ColorDrawable(SplashscreenContentDrawer.getSystemBGColor()));
            } else {
                if (drawable instanceof ColorDrawable) {
                    complexDrawableTester = new SingleColorTester((ColorDrawable) drawable);
                } else {
                    complexDrawableTester = new ComplexDrawableTester(drawable, i);
                }
                this.mColorChecker = complexDrawableTester;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class HighResIconProvider {
        public boolean mLoadInDetail;
        public final Context mSharedContext;
        public final IconProvider mSharedIconProvider;
        public Context mStandaloneContext;
        public IconProvider mStandaloneIconProvider;

        public HighResIconProvider(Context context, IconProvider iconProvider) {
            this.mSharedContext = context;
            this.mSharedIconProvider = iconProvider;
        }

        public final Drawable getIcon(ActivityInfo activityInfo, int i, int i2, int i3) {
            Drawable icon;
            this.mLoadInDetail = false;
            if (i < i2 && i < 320) {
                if (i3 == 2) {
                    icon = loadFromStandalone(activityInfo, i, i2, i3);
                } else {
                    icon = loadFromStandalone(activityInfo, i, i2, -1);
                }
            } else {
                icon = this.mSharedIconProvider.getIcon(i2, activityInfo);
            }
            if (icon == null) {
                return this.mSharedContext.getPackageManager().getDefaultActivityIcon();
            }
            return icon;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final android.graphics.drawable.Drawable loadFromStandalone(android.content.pm.ActivityInfo r3, int r4, int r5, int r6) {
            /*
                r2 = this;
                android.content.Context r0 = r2.mStandaloneContext
                if (r0 != 0) goto L1d
                android.content.Context r0 = r2.mSharedContext
                android.content.res.Resources r1 = r0.getResources()
                android.content.res.Configuration r1 = r1.getConfiguration()
                android.content.Context r0 = r0.createConfigurationContext(r1)
                r2.mStandaloneContext = r0
                com.android.launcher3.icons.IconProvider r0 = new com.android.launcher3.icons.IconProvider
                android.content.Context r1 = r2.mStandaloneContext
                r0.<init>(r1)
                r2.mStandaloneIconProvider = r0
            L1d:
                r0 = 2
                if (r6 != r0) goto L21
                goto L2e
            L21:
                android.content.Context r6 = r2.mStandaloneContext     // Catch: java.lang.Throwable -> L2e
                android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: java.lang.Throwable -> L2e
                android.content.pm.ApplicationInfo r0 = r3.applicationInfo     // Catch: java.lang.Throwable -> L2e
                android.content.res.Resources r6 = r6.getResourcesForApplication(r0)     // Catch: java.lang.Throwable -> L2e
                goto L2f
            L2e:
                r6 = 0
            L2f:
                if (r6 == 0) goto L40
                android.content.res.Configuration r0 = r6.getConfiguration()
                android.util.DisplayMetrics r1 = r6.getDisplayMetrics()
                r0.densityDpi = r5
                r1.densityDpi = r5
                r6.updateConfiguration(r0, r1)
            L40:
                com.android.launcher3.icons.IconProvider r0 = r2.mStandaloneIconProvider
                android.graphics.drawable.Drawable r3 = r0.getIcon(r5, r3)
                r5 = 1
                r2.mLoadInDetail = r5
                if (r6 == 0) goto L5a
                android.content.res.Configuration r2 = r6.getConfiguration()
                android.util.DisplayMetrics r5 = r6.getDisplayMetrics()
                r2.densityDpi = r4
                r5.densityDpi = r4
                r6.updateConfiguration(r2, r5)
            L5a:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.startingsurface.SplashscreenContentDrawer.HighResIconProvider.loadFromStandalone(android.content.pm.ActivityInfo, int, int, int):android.graphics.drawable.Drawable");
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PreLoadIconDataHandler extends Handler {
        public /* synthetic */ PreLoadIconDataHandler(SplashscreenContentDrawer splashscreenContentDrawer, int i) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                ((HandlerExecutor) SplashscreenContentDrawer.this.mSplashScreenExecutor).execute(new SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0(this, 2));
            }
        }

        private PreLoadIconDataHandler() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PreloadIconData {
        public Context mContext;
        public boolean mIsPreloaded;
        public Drawable[] mPreloadIconDrawable;
        public int mPreloadIconSize;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SettingObserver extends ContentObserver {
        public static final /* synthetic */ int $r8$clinit = 0;
        public final Handler mHandler;

        public SettingObserver(Handler handler) {
            super(handler);
            this.mHandler = handler;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri, int i) {
            this.mHandler.post(new SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0(this, 1));
        }

        public final void updateSettings(boolean z) {
            Resources resources;
            Application currentApplication;
            String str;
            String string = Settings.System.getString(SplashscreenContentDrawer.this.mContext.getContentResolver(), "current_sec_active_themepackage");
            int i = SplashscreenContentDrawer.mThemeBackgroundColor;
            final int i2 = 0;
            final int i3 = 1;
            if (string == null) {
                i = 0;
            } else if (!string.equals(SplashscreenContentDrawer.this.mThemePackageName) || z) {
                Drawable drawable = null;
                try {
                    resources = SplashscreenContentDrawer.this.mContext.getPackageManager().getResourcesForApplication("android");
                } catch (PackageManager.NameNotFoundException unused) {
                    Slog.e("ShellStartingWindow", "updateSettings: NameNotFoundException");
                    resources = null;
                }
                if (resources != null) {
                    int identifier = resources.getIdentifier("tw_screen_background_color_light", "color", "android");
                    if (identifier != 0) {
                        i = resources.getColor(identifier);
                    } else {
                        int identifier2 = resources.getIdentifier("tw_screen_background_light", "drawable", "android");
                        if (identifier2 != 0) {
                            drawable = resources.getDrawable(identifier2);
                        }
                    }
                }
                if (i == 0 && drawable == null && (currentApplication = ActivityThread.currentApplication()) != null) {
                    TypedArray obtainStyledAttributes = currentApplication.obtainStyledAttributes(R.styleable.Window);
                    if (obtainStyledAttributes.hasValue(1)) {
                        drawable = obtainStyledAttributes.getDrawable(1);
                    }
                }
                if (drawable != null) {
                    i = new DrawableColorTester(drawable, 1).mColorChecker.getDominantColor();
                }
            }
            if (i != SplashscreenContentDrawer.mThemeBackgroundColor) {
                SplashscreenContentDrawer.this.mColorCache.mColorMap.forEach(new BiConsumer() { // from class: com.android.wm.shell.startingsurface.SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda1
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        int i4 = 0;
                        switch (i2) {
                            case 0:
                                SplashscreenContentDrawer.ColorCache.Colors colors = (SplashscreenContentDrawer.ColorCache.Colors) obj2;
                                while (i4 < 2) {
                                    colors.mWindowColors[i4] = null;
                                    i4++;
                                }
                                return;
                            default:
                                SplashscreenContentDrawer.ColorCache.Colors colors2 = (SplashscreenContentDrawer.ColorCache.Colors) obj2;
                                while (i4 < 2) {
                                    colors2.mIconColors[i4] = null;
                                    i4++;
                                }
                                return;
                        }
                    }
                });
            }
            String string2 = Settings.System.getString(SplashscreenContentDrawer.this.mContext.getContentResolver(), "current_sec_appicon_theme_package");
            if ((string2 != null && !string2.equals(SplashscreenContentDrawer.this.mThemeIconPackageName)) || ((str = SplashscreenContentDrawer.this.mThemeIconPackageName) != null && !str.equals(string2))) {
                SplashscreenContentDrawer.this.mColorCache.mColorMap.forEach(new BiConsumer() { // from class: com.android.wm.shell.startingsurface.SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda1
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        int i4 = 0;
                        switch (i3) {
                            case 0:
                                SplashscreenContentDrawer.ColorCache.Colors colors = (SplashscreenContentDrawer.ColorCache.Colors) obj2;
                                while (i4 < 2) {
                                    colors.mWindowColors[i4] = null;
                                    i4++;
                                }
                                return;
                            default:
                                SplashscreenContentDrawer.ColorCache.Colors colors2 = (SplashscreenContentDrawer.ColorCache.Colors) obj2;
                                while (i4 < 2) {
                                    colors2.mIconColors[i4] = null;
                                    i4++;
                                }
                                return;
                        }
                    }
                });
            }
            SplashscreenContentDrawer splashscreenContentDrawer = SplashscreenContentDrawer.this;
            splashscreenContentDrawer.mThemeIconPackageName = string2;
            splashscreenContentDrawer.mThemePackageName = string;
            SplashscreenContentDrawer.mThemeBackgroundColor = i;
            Slog.d("ShellStartingWindow", "updateSettings: theme=" + SplashscreenContentDrawer.this.mThemePackageName + ", iconTheme=" + SplashscreenContentDrawer.this.mThemeIconPackageName + ", color=" + Integer.toHexString(SplashscreenContentDrawer.mThemeBackgroundColor));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplashScreenWindowAttrs {
        public int mWindowBgResId = 0;
        public int mWindowBgColor = 0;
        public Drawable mSplashScreenIcon = null;
        public Drawable mBrandingImage = null;
        public int mIconBgColor = 0;
        public Drawable mWindowBackground = null;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SplashViewBuilder {
        public final ActivityInfo mActivityInfo;
        public boolean mAllowHandleSolidColor;
        public final Context mContext;
        public int mDisplayId;
        public Drawable[] mFinalIconDrawables;
        public int mFinalIconSize;
        public Drawable mOverlayDrawable;
        public int mSuggestType;
        public int mThemeColor;
        public Consumer mUiThreadInitTask;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes2.dex */
        public final class ShapeIconFactory extends BaseIconFactory {
            public ShapeIconFactory(SplashViewBuilder splashViewBuilder, Context context, int i, int i2) {
                super(context, i, i2, true);
            }
        }

        public SplashViewBuilder(Context context, ActivityInfo activityInfo) {
            this.mFinalIconSize = SplashscreenContentDrawer.this.mIconSize;
            this.mContext = context;
            this.mActivityInfo = activityInfo;
        }

        /* JADX WARN: Code restructure failed: missing block: B:69:0x00ef, code lost:
        
            if (r8 != null) goto L48;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final android.window.SplashScreenView build(boolean r27) {
            /*
                Method dump skipped, instructions count: 741
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.startingsurface.SplashscreenContentDrawer.SplashViewBuilder.build(boolean):android.window.SplashScreenView");
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x005b  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void createIconDrawable(android.graphics.drawable.Drawable r9, boolean r10, boolean r11) {
            /*
                r8 = this;
                com.android.wm.shell.startingsurface.SplashscreenContentDrawer r0 = com.android.wm.shell.startingsurface.SplashscreenContentDrawer.this
                if (r10 == 0) goto L19
                int r3 = r0.mDefaultIconSize
                int r4 = r8.mFinalIconSize
                android.os.Handler r6 = r0.mSplashscreenWorkerHandler
                com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$ImmobileIconDrawable r10 = new com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$ImmobileIconDrawable
                r1 = r10
                r2 = r9
                r5 = r11
                r1.<init>(r2, r3, r4, r5, r6)
                android.graphics.drawable.Drawable[] r9 = new android.graphics.drawable.Drawable[]{r10}
                r8.mFinalIconDrawables = r9
                goto L62
            L19:
                com.android.wm.shell.startingsurface.SplashscreenContentDrawer$SplashScreenWindowAttrs r10 = r0.mTmpAttrs
                int r10 = r10.mIconBgColor
                int r1 = r8.mThemeColor
                int r4 = r0.mDefaultIconSize
                int r5 = r8.mFinalIconSize
                android.os.Handler r7 = r0.mSplashscreenWorkerHandler
                r0 = 0
                if (r10 == 0) goto L2c
                if (r10 == r1) goto L2c
                r1 = 1
                goto L2d
            L2c:
                r1 = r0
            L2d:
                boolean r2 = r9 instanceof android.graphics.drawable.Animatable
                if (r2 == 0) goto L37
                com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$AnimatableIconAnimateListener r11 = new com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$AnimatableIconAnimateListener
                r11.<init>(r9)
                goto L51
            L37:
                boolean r2 = r9 instanceof android.graphics.drawable.AdaptiveIconDrawable
                if (r2 == 0) goto L44
                com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$ImmobileIconDrawable r1 = new com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$ImmobileIconDrawable
                r2 = r1
                r3 = r9
                r6 = r11
                r2.<init>(r3, r4, r5, r6, r7)
                goto L53
            L44:
                com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$ImmobileIconDrawable r0 = new com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$ImmobileIconDrawable
                com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable r3 = new com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$AdaptiveForegroundDrawable
                r3.<init>(r9)
                r2 = r0
                r6 = r11
                r2.<init>(r3, r4, r5, r6, r7)
                r11 = r0
            L51:
                r0 = r1
                r1 = r11
            L53:
                if (r0 == 0) goto L5b
                com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$MaskBackgroundDrawable r9 = new com.android.wm.shell.startingsurface.SplashscreenIconDrawableFactory$MaskBackgroundDrawable
                r9.<init>(r10)
                goto L5c
            L5b:
                r9 = 0
            L5c:
                android.graphics.drawable.Drawable[] r9 = new android.graphics.drawable.Drawable[]{r1, r9}
                r8.mFinalIconDrawables = r9
            L62:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.startingsurface.SplashscreenContentDrawer.SplashViewBuilder.createIconDrawable(android.graphics.drawable.Drawable, boolean, boolean):void");
        }
    }

    /* renamed from: -$$Nest$smisRgbSimilarInHsv, reason: not valid java name */
    public static boolean m2470$$Nest$smisRgbSimilarInHsv(int i, int i2) {
        float f;
        double d;
        if (i == i2) {
            return true;
        }
        float luminance = Color.luminance(i);
        float luminance2 = Color.luminance(i2);
        if (luminance > luminance2) {
            f = (luminance + 0.05f) / (luminance2 + 0.05f);
        } else {
            f = (luminance2 + 0.05f) / (luminance + 0.05f);
        }
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -853329785, 32, null, String.valueOf(Integer.toHexString(i)), String.valueOf(Integer.toHexString(i2)), Double.valueOf(f));
        }
        if (f < 2.0f) {
            return true;
        }
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        Color.colorToHSV(i, fArr);
        Color.colorToHSV(i2, fArr2);
        int abs = ((((int) Math.abs(fArr[0] - fArr2[0])) + 180) % 360) - 180;
        double pow = Math.pow(abs / 180.0f, 2.0d);
        double pow2 = Math.pow(fArr[1] - fArr2[1], 2.0d);
        double pow3 = Math.pow(fArr[2] - fArr2[2], 2.0d);
        double sqrt = Math.sqrt(((pow + pow2) + pow3) / 3.0d);
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            d = sqrt;
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -137676175, 2796201, null, Long.valueOf(abs), Double.valueOf(fArr[0]), Double.valueOf(fArr2[0]), Double.valueOf(fArr[1]), Double.valueOf(fArr2[1]), Double.valueOf(fArr[2]), Double.valueOf(fArr2[2]), Double.valueOf(pow), Double.valueOf(pow2), Double.valueOf(pow3), Double.valueOf(d));
        } else {
            d = sqrt;
        }
        if (d < 0.1d) {
            return true;
        }
        return false;
    }

    public SplashscreenContentDrawer(Context context, IconProvider iconProvider, TransactionPool transactionPool, ShellExecutor shellExecutor) {
        this.mContext = context;
        this.mHighResIconProvider = new HighResIconProvider(context, iconProvider);
        this.mTransactionPool = transactionPool;
        this.mSplashScreenExecutor = shellExecutor;
        final HandlerThread handlerThread = new HandlerThread("wmshell.splashworker", -10);
        handlerThread.start();
        if (CoreRune.SYSPERF_VI_BOOST) {
            new Handler().postDelayed(new Runnable(this) { // from class: com.android.wm.shell.startingsurface.SplashscreenContentDrawer.1
                @Override // java.lang.Runnable
                public final void run() {
                    ICustomFrequencyManager asInterface;
                    IBinder service = ServiceManager.getService("CustomFrequencyManagerService");
                    if (service != null && (asInterface = ICustomFrequencyManager.Stub.asInterface(service)) != null) {
                        try {
                            asInterface.sendTid(Process.myPid(), handlerThread.getThreadId(), 4);
                        } catch (RemoteException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }, 10000L);
        }
        Handler threadHandler = handlerThread.getThreadHandler();
        this.mSplashscreenWorkerHandler = threadHandler;
        this.mColorCache = new ColorCache(context, threadHandler);
        SettingObserver settingObserver = new SettingObserver(threadHandler);
        this.mSettingObserver = settingObserver;
        settingObserver.mHandler.post(new SplashscreenContentDrawer$SettingObserver$$ExternalSyntheticLambda0(settingObserver, 0));
        this.mPreloadIcon = new PreloadIconData();
    }

    public static Context createContext(Context context, StartingWindowInfo startingWindowInfo, int i, int i2, DisplayManager displayManager) {
        String str;
        ActivityManager.RunningTaskInfo runningTaskInfo = startingWindowInfo.taskInfo;
        ActivityInfo activityInfo = startingWindowInfo.targetActivityInfo;
        if (activityInfo == null) {
            activityInfo = runningTaskInfo.topActivityInfo;
        }
        if (activityInfo == null || (str = activityInfo.packageName) == null) {
            return null;
        }
        int i3 = runningTaskInfo.displayId;
        int i4 = runningTaskInfo.taskId;
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 793751866, 80, null, str, String.valueOf(Integer.toHexString(i)), Long.valueOf(i4), Long.valueOf(i2));
        }
        Display display = displayManager.getDisplay(i3);
        if (display == null) {
            return null;
        }
        if (i3 != 0) {
            context = context.createDisplayContext(display);
        }
        if (context == null) {
            return null;
        }
        if (i != context.getThemeResId()) {
            try {
                context = context.createPackageContextAsUser(activityInfo.packageName, 4, UserHandle.of(runningTaskInfo.userId));
                context.setTheme(i);
            } catch (PackageManager.NameNotFoundException e) {
                Slog.w("ShellStartingWindow", "Failed creating package context with package name " + activityInfo.packageName + " for user " + runningTaskInfo.userId, e);
                return null;
            }
        }
        Configuration configuration = runningTaskInfo.getConfiguration();
        if (configuration.diffPublicOnly(context.getResources().getConfiguration()) != 0) {
            if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -2038605641, 0, null, String.valueOf(configuration));
            }
            Context createConfigurationContext = context.createConfigurationContext(configuration);
            createConfigurationContext.setTheme(i);
            TypedArray obtainStyledAttributes = createConfigurationContext.obtainStyledAttributes(R.styleable.Window);
            int resourceId = obtainStyledAttributes.getResourceId(1, 0);
            if (resourceId != 0) {
                try {
                    if (createConfigurationContext.getDrawable(resourceId) != null) {
                        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 619393728, 0, null, String.valueOf(configuration));
                        }
                        context = createConfigurationContext;
                    }
                } catch (Resources.NotFoundException e2) {
                    Slog.w("ShellStartingWindow", "failed creating starting window for overrideConfig at taskId: " + i4, e2);
                    return null;
                }
            }
            obtainStyledAttributes.recycle();
        }
        return context;
    }

    public static WindowManager.LayoutParams createLayoutParameters(Context context, StartingWindowInfo startingWindowInfo, int i, CharSequence charSequence, int i2, IBinder iBinder) {
        int i3;
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(3);
        layoutParams.setFitInsetsSides(0);
        layoutParams.setFitInsetsTypes(0);
        layoutParams.format = i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Window);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            i3 = android.R.bool.config_user_notification_of_restrictied_mobile_access;
        } else {
            i3 = android.R.attr.transcriptMode;
        }
        if (i != 4 || obtainStyledAttributes.getBoolean(33, false)) {
            i3 |= VideoPlayer.MEDIA_ERROR_SYSTEM;
        }
        layoutParams.layoutInDisplayCutoutMode = obtainStyledAttributes.getInt(50, layoutParams.layoutInDisplayCutoutMode);
        layoutParams.windowAnimations = obtainStyledAttributes.getResourceId(8, 0);
        obtainStyledAttributes.recycle();
        ActivityManager.RunningTaskInfo runningTaskInfo = startingWindowInfo.taskInfo;
        ActivityInfo activityInfo = startingWindowInfo.targetActivityInfo;
        if (activityInfo == null) {
            activityInfo = runningTaskInfo.topActivityInfo;
        }
        int i4 = runningTaskInfo.displayId;
        if ((i4 == 0 || i4 == 2) && startingWindowInfo.isKeyguardOccluded) {
            i3 |= 524288;
        }
        layoutParams.flags = 131096 | i3;
        layoutParams.token = iBinder;
        layoutParams.packageName = activityInfo.packageName;
        layoutParams.privateFlags |= 16;
        if (!context.getResources().getCompatibilityInfo().supportsScreen()) {
            layoutParams.privateFlags |= 128;
        }
        layoutParams.setTitle("Splash Screen " + ((Object) charSequence));
        return layoutParams;
    }

    public static int estimateWindowBGColor(Drawable drawable) {
        DrawableColorTester.ColorTester colorTester = new DrawableColorTester(drawable, 2).mColorChecker;
        if (colorTester.passFilterRatio() != 1.0f) {
            Slog.w("ShellStartingWindow", "Window background is translucent, fill background with black color");
            return getSystemBGColor();
        }
        return colorTester.getDominantColor();
    }

    public static long getShowingDuration(long j, long j2) {
        if (j <= j2) {
            return j2;
        }
        if (j2 < 500) {
            if (j <= 500 && j2 >= 400) {
                return 500L;
            }
            return 400L;
        }
        return j2;
    }

    public static int getSystemBGColor() {
        Application currentApplication = ActivityThread.currentApplication();
        if (currentApplication == null) {
            Slog.e("ShellStartingWindow", "System context does not exist!");
            return EmergencyPhoneWidget.BG_COLOR;
        }
        int i = mThemeBackgroundColor;
        if (i != 0) {
            return i;
        }
        return currentApplication.getResources().getColor(com.android.systemui.R.color.splash_window_background_default);
    }

    public static void getWindowAttrs(Context context, SplashScreenWindowAttrs splashScreenWindowAttrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Window);
        boolean z = false;
        splashScreenWindowAttrs.mWindowBgResId = obtainStyledAttributes.getResourceId(1, 0);
        Drawable drawable = (Drawable) safeReturnAttrDefault(new SplashscreenContentDrawer$$ExternalSyntheticLambda4(obtainStyledAttributes, 0), null);
        splashScreenWindowAttrs.mWindowBackground = drawable;
        if (drawable != null && !(drawable instanceof BitmapDrawable)) {
            splashScreenWindowAttrs.mWindowBackground = null;
        }
        Drawable drawable2 = splashScreenWindowAttrs.mWindowBackground;
        if (drawable2 != null) {
            splashScreenWindowAttrs.mWindowBgColor = estimateWindowBGColor(drawable2);
        } else {
            splashScreenWindowAttrs.mWindowBgColor = ((Integer) safeReturnAttrDefault(new SplashscreenContentDrawer$$ExternalSyntheticLambda4(obtainStyledAttributes, 1), 0)).intValue();
        }
        splashScreenWindowAttrs.mSplashScreenIcon = (Drawable) safeReturnAttrDefault(new SplashscreenContentDrawer$$ExternalSyntheticLambda4(obtainStyledAttributes, 2), null);
        splashScreenWindowAttrs.mBrandingImage = (Drawable) safeReturnAttrDefault(new SplashscreenContentDrawer$$ExternalSyntheticLambda4(obtainStyledAttributes, 3), null);
        splashScreenWindowAttrs.mIconBgColor = ((Integer) safeReturnAttrDefault(new SplashscreenContentDrawer$$ExternalSyntheticLambda4(obtainStyledAttributes, 4), 0)).intValue();
        obtainStyledAttributes.recycle();
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            String valueOf = String.valueOf(Integer.toHexString(splashScreenWindowAttrs.mWindowBgColor));
            if (splashScreenWindowAttrs.mSplashScreenIcon != null) {
                z = true;
            }
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 1867686022, 12, null, valueOf, Boolean.valueOf(z));
        }
    }

    public static int peekWindowBGColor(Context context, SplashScreenWindowAttrs splashScreenWindowAttrs) {
        Drawable colorDrawable;
        Trace.traceBegin(32L, "peekWindowBGColor");
        if (splashScreenWindowAttrs.mWindowBgColor != 0) {
            colorDrawable = new ColorDrawable(splashScreenWindowAttrs.mWindowBgColor);
        } else {
            int i = splashScreenWindowAttrs.mWindowBgResId;
            if (i != 0) {
                colorDrawable = context.getDrawable(i);
            } else {
                colorDrawable = new ColorDrawable(getSystemBGColor());
                Slog.w("ShellStartingWindow", "Window background does not exist, using " + colorDrawable);
            }
        }
        int estimateWindowBGColor = estimateWindowBGColor(colorDrawable);
        Trace.traceEnd(32L);
        return estimateWindowBGColor;
    }

    public static Object safeReturnAttrDefault(SplashscreenContentDrawer$$ExternalSyntheticLambda4 splashscreenContentDrawer$$ExternalSyntheticLambda4, Object obj) {
        try {
            return splashscreenContentDrawer$$ExternalSyntheticLambda4.apply(obj);
        } catch (RuntimeException e) {
            Slog.w("ShellStartingWindow", "Get attribute fail, return default: " + e.getMessage());
            return obj;
        }
    }

    public final void applyExitAnimation(final SplashScreenView splashScreenView, final SurfaceControl surfaceControl, final Rect rect, final Runnable runnable, long j, final float f, long j2) {
        long j3;
        Runnable runnable2 = new Runnable() { // from class: com.android.wm.shell.startingsurface.SplashscreenContentDrawer$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SplashScreenExitAnimationUtils.RadialVanishAnimation radialVanishAnimation;
                View view;
                SplashScreenExitAnimationUtils.ShiftUpAnimation shiftUpAnimation;
                SplashscreenContentDrawer splashscreenContentDrawer = SplashscreenContentDrawer.this;
                SplashScreenView splashScreenView2 = splashScreenView;
                SurfaceControl surfaceControl2 = surfaceControl;
                Rect rect2 = rect;
                Runnable runnable3 = runnable;
                float f2 = f;
                splashscreenContentDrawer.getClass();
                SplashScreenExitAnimation splashScreenExitAnimation = new SplashScreenExitAnimation(splashscreenContentDrawer.mContext, splashScreenView2, surfaceControl2, rect2, 0, splashscreenContentDrawer.mTransactionPool, runnable3, f2);
                final SplashScreenView splashScreenView3 = splashScreenExitAnimation.mSplashScreenView;
                SurfaceControl surfaceControl3 = splashScreenExitAnimation.mFirstWindowSurface;
                int i = splashScreenExitAnimation.mMainWindowShiftLength;
                TransactionPool transactionPool = splashScreenExitAnimation.mTransactionPool;
                Rect rect3 = splashScreenExitAnimation.mFirstWindowFrame;
                final int i2 = splashScreenExitAnimation.mAnimationDuration;
                final int i3 = splashScreenExitAnimation.mIconFadeOutDuration;
                final float f3 = splashScreenExitAnimation.mIconStartAlpha;
                final float f4 = splashScreenExitAnimation.mBrandingStartAlpha;
                final int i4 = splashScreenExitAnimation.mAppRevealDuration;
                float f5 = splashScreenExitAnimation.mRoundedCornerRadius;
                Interpolator interpolator = SplashScreenExitAnimationUtils.ICON_INTERPOLATOR;
                int height = splashScreenView3.getHeight() - 0;
                int width = splashScreenView3.getWidth() / 2;
                SplashScreenExitAnimationUtils.RadialVanishAnimation radialVanishAnimation2 = new SplashScreenExitAnimationUtils.RadialVanishAnimation(splashScreenView3);
                radialVanishAnimation2.mCircleCenter.set(width, 0);
                radialVanishAnimation2.mInitRadius = 0;
                radialVanishAnimation2.mFinishRadius = (int) ((((int) Math.sqrt((width * width) + (height * height))) * 1.25f) + 0.5d);
                radialVanishAnimation2.mVanishPaint.setShader(new RadialGradient(0.0f, 0.0f, 1.0f, new int[]{-1, -1, 0}, new float[]{0.0f, 0.8f, 1.0f}, Shader.TileMode.CLAMP));
                radialVanishAnimation2.mVanishPaint.setBlendMode(BlendMode.DST_OUT);
                if (surfaceControl3 != null && surfaceControl3.isValid()) {
                    view = new View(splashScreenView3.getContext());
                    view.setBackgroundColor(splashScreenView3.getInitBackgroundColor());
                    splashScreenView3.addView(view, new ViewGroup.LayoutParams(-1, i));
                    radialVanishAnimation = radialVanishAnimation2;
                    shiftUpAnimation = new SplashScreenExitAnimationUtils.ShiftUpAnimation(0.0f, -i, view, surfaceControl3, splashScreenView3, transactionPool, rect3, i, f5);
                } else {
                    radialVanishAnimation = radialVanishAnimation2;
                    view = null;
                    shiftUpAnimation = null;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                ofFloat.setDuration(i2);
                ofFloat.setInterpolator(Interpolators.LINEAR);
                ofFloat.addListener(splashScreenExitAnimation);
                final SplashScreenExitAnimationUtils.RadialVanishAnimation radialVanishAnimation3 = radialVanishAnimation;
                ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.startingsurface.SplashScreenExitAnimationUtils.1
                    public final /* synthetic */ View val$finalOccludeHoleView;
                    public final /* synthetic */ RadialVanishAnimation val$radialVanishAnimation;
                    public final /* synthetic */ ViewGroup val$splashScreenView;

                    public AnonymousClass1(final ViewGroup splashScreenView32, final RadialVanishAnimation radialVanishAnimation32, View view2) {
                        r2 = splashScreenView32;
                        r3 = radialVanishAnimation32;
                        r4 = view2;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        final SurfaceControl surfaceControl4;
                        super.onAnimationEnd(animator);
                        ShiftUpAnimation shiftUpAnimation2 = ShiftUpAnimation.this;
                        if (shiftUpAnimation2 != null && (surfaceControl4 = shiftUpAnimation2.mFirstWindowSurface) != null && surfaceControl4.isValid()) {
                            TransactionPool transactionPool2 = shiftUpAnimation2.mTransactionPool;
                            SurfaceControl.Transaction acquire = transactionPool2.acquire();
                            if (shiftUpAnimation2.mSplashScreenView.isAttachedToWindow()) {
                                acquire.setFrameTimelineVsync(Choreographer.getSfInstance().getVsyncId());
                                shiftUpAnimation2.mApplier.scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(surfaceControl4).withWindowCrop((Rect) null).withMergeTransaction(acquire).build()});
                            } else {
                                acquire.setWindowCrop(surfaceControl4, null);
                                acquire.apply();
                            }
                            transactionPool2.release(acquire);
                            Choreographer.getSfInstance().postCallback(4, new Runnable() { // from class: com.android.wm.shell.startingsurface.SplashScreenExitAnimationUtils$ShiftUpAnimation$$ExternalSyntheticLambda0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    surfaceControl4.release();
                                }
                            }, null);
                        }
                        r2.removeView(r3);
                        r2.removeView(r4);
                    }
                });
                final SplashScreenExitAnimationUtils.ShiftUpAnimation shiftUpAnimation2 = shiftUpAnimation;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.startingsurface.SplashScreenExitAnimationUtils$$ExternalSyntheticLambda0
                    public final /* synthetic */ int f$5 = 0;

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        View view2;
                        View view3;
                        SurfaceControl surfaceControl4;
                        int i5 = i3;
                        int i6 = i2;
                        ViewGroup viewGroup = splashScreenView32;
                        float f6 = f3;
                        float f7 = f4;
                        int i7 = this.f$5;
                        int i8 = i4;
                        SplashScreenExitAnimationUtils.RadialVanishAnimation radialVanishAnimation4 = radialVanishAnimation32;
                        SplashScreenExitAnimationUtils.ShiftUpAnimation shiftUpAnimation3 = shiftUpAnimation2;
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue() * i6;
                        float interpolation = ((PathInterpolator) SplashScreenExitAnimationUtils.ICON_INTERPOLATOR).getInterpolation(MathUtils.constrain((floatValue - ((float) 0)) / i5, 0.0f, 1.0f));
                        if (viewGroup instanceof SplashScreenView) {
                            SplashScreenView splashScreenView4 = (SplashScreenView) viewGroup;
                            view2 = splashScreenView4.getIconView();
                            view3 = splashScreenView4.getBrandingView();
                        } else {
                            view2 = null;
                            view3 = null;
                        }
                        if (view2 != null) {
                            view2.setAlpha((1.0f - interpolation) * f6);
                        }
                        if (view3 != null) {
                            view3.setAlpha((1.0f - interpolation) * f7);
                        }
                        float constrain = MathUtils.constrain((floatValue - i7) / i8, 0.0f, 1.0f);
                        if (radialVanishAnimation4.mVanishPaint.getShader() != null) {
                            float interpolation2 = ((PathInterpolator) SplashScreenExitAnimationUtils.MASK_RADIUS_INTERPOLATOR).getInterpolation(constrain);
                            float interpolation3 = ((PathInterpolator) Interpolators.ALPHA_OUT).getInterpolation(constrain);
                            float f8 = ((radialVanishAnimation4.mFinishRadius - r3) * interpolation2) + radialVanishAnimation4.mInitRadius;
                            radialVanishAnimation4.mVanishMatrix.setScale(f8, f8);
                            Matrix matrix = radialVanishAnimation4.mVanishMatrix;
                            Point point = radialVanishAnimation4.mCircleCenter;
                            matrix.postTranslate(point.x, point.y);
                            radialVanishAnimation4.mVanishPaint.getShader().setLocalMatrix(radialVanishAnimation4.mVanishMatrix);
                            radialVanishAnimation4.mVanishPaint.setAlpha(Math.round(interpolation3 * 255.0f));
                            radialVanishAnimation4.postInvalidate();
                        }
                        if (shiftUpAnimation3 != null && (surfaceControl4 = shiftUpAnimation3.mFirstWindowSurface) != null && surfaceControl4.isValid() && shiftUpAnimation3.mSplashScreenView.isAttachedToWindow()) {
                            float interpolation4 = ((PathInterpolator) SplashScreenExitAnimationUtils.SHIFT_UP_INTERPOLATOR).getInterpolation(constrain);
                            float f9 = shiftUpAnimation3.mToYDelta;
                            float f10 = shiftUpAnimation3.mFromYDelta;
                            float m = DependencyGraph$$ExternalSyntheticOutline0.m(f9, f10, interpolation4, f10);
                            shiftUpAnimation3.mOccludeHoleView.setTranslationY(m);
                            Matrix matrix2 = shiftUpAnimation3.mTmpTransform;
                            matrix2.setTranslate(0.0f, m);
                            TransactionPool transactionPool2 = shiftUpAnimation3.mTransactionPool;
                            SurfaceControl.Transaction acquire = transactionPool2.acquire();
                            acquire.setFrameTimelineVsync(Choreographer.getSfInstance().getVsyncId());
                            Rect rect4 = shiftUpAnimation3.mFirstWindowFrame;
                            matrix2.postTranslate(rect4.left, rect4.top + shiftUpAnimation3.mMainWindowShiftLength);
                            shiftUpAnimation3.mApplier.scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(surfaceControl4).withMatrix(matrix2).withMergeTransaction(acquire).build()});
                            transactionPool2.release(acquire);
                        }
                    }
                });
                ofFloat.start();
            }
        };
        if (splashScreenView.getIconView() == null) {
            runnable2.run();
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis() - j;
        if (splashScreenView.getIconAnimationDuration() != null) {
            j3 = splashScreenView.getIconAnimationDuration().toMillis();
        } else {
            j3 = 0;
        }
        long showingDuration = getShowingDuration(j3, uptimeMillis) - uptimeMillis;
        if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
            ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 482713286, 0, null, String.valueOf(showingDuration));
        }
        if (showingDuration > 0) {
            splashScreenView.postDelayed(runnable2, showingDuration);
            return;
        }
        int integer = (int) ((j2 - uptimeMillis) - this.mContext.getResources().getInteger(com.android.systemui.R.integer.starting_window_app_reveal_anim_duration_reduced));
        if (integer > 0) {
            splashScreenView.postDelayed(runnable2, integer);
        } else {
            runnable2.run();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0029, code lost:
    
        if (r5 != null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getBGColorFromCache(android.content.pm.ActivityInfo r5, java.util.function.IntSupplier r6) {
        /*
            r4 = this;
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache r0 = r4.mColorCache
            java.lang.String r5 = r5.packageName
            int r1 = r4.mLastPackageContextConfigHash
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$SplashScreenWindowAttrs r4 = r4.mTmpAttrs
            int r2 = r4.mWindowBgColor
            int r4 = r4.mWindowBgResId
            android.util.ArrayMap r3 = r0.mColorMap
            java.lang.Object r3 = r3.get(r5)
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$Colors r3 = (com.android.wm.shell.startingsurface.SplashscreenContentDrawer.ColorCache.Colors) r3
            int r1 = r1 * 31
            int r1 = r1 + r2
            int r1 = r1 * 31
            int r1 = r1 + r4
            r4 = 0
            int[] r2 = new int[]{r4}
            if (r3 == 0) goto L2c
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$WindowColor[] r5 = r3.mWindowColors
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$Cache r5 = com.android.wm.shell.startingsurface.SplashscreenContentDrawer.ColorCache.getCache(r5, r1, r2)
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$WindowColor r5 = (com.android.wm.shell.startingsurface.SplashscreenContentDrawer.ColorCache.WindowColor) r5
            if (r5 == 0) goto L36
            goto L45
        L2c:
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$Colors r3 = new com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$Colors
            r3.<init>(r4)
            android.util.ArrayMap r0 = r0.mColorMap
            r0.put(r5, r3)
        L36:
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$WindowColor r5 = new com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$WindowColor
            int r6 = r6.getAsInt()
            r5.<init>(r1, r6)
            com.android.wm.shell.startingsurface.SplashscreenContentDrawer$ColorCache$WindowColor[] r6 = r3.mWindowColors
            r4 = r2[r4]
            r6[r4] = r5
        L45:
            int r4 = r5.mBgColor
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.startingsurface.SplashscreenContentDrawer.getBGColorFromCache(android.content.pm.ActivityInfo, java.util.function.IntSupplier):int");
    }

    public final SplashScreenView makeSplashScreenContentView(Context context, StartingWindowInfo startingWindowInfo, int i, Consumer consumer) {
        final Drawable drawable;
        int bGColorFromCache;
        updateDensity();
        SplashScreenWindowAttrs splashScreenWindowAttrs = this.mTmpAttrs;
        getWindowAttrs(context, splashScreenWindowAttrs);
        this.mLastPackageContextConfigHash = context.getResources().getConfiguration().hashCode();
        if (context.getResources().getConfiguration().isDexMode() && context.getResources().getAssets().getSamsungThemeOverlays().size() > 0) {
            drawable = new ColorDrawable(getSystemBGColor());
        } else {
            if (i == 4) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Window);
                int intValue = ((Integer) safeReturnAttrDefault(new SplashscreenContentDrawer$$ExternalSyntheticLambda4(obtainStyledAttributes, 5), 0)).intValue();
                obtainStyledAttributes.recycle();
                if (intValue != 0) {
                    drawable = context.getDrawable(intValue);
                } else {
                    int i2 = splashScreenWindowAttrs.mWindowBgResId;
                    if (i2 != 0) {
                        drawable = context.getDrawable(i2);
                    }
                }
            }
            drawable = null;
        }
        ActivityInfo activityInfo = startingWindowInfo.targetActivityInfo;
        if (activityInfo == null) {
            activityInfo = startingWindowInfo.taskInfo.topActivityInfo;
        }
        if (drawable != null) {
            bGColorFromCache = getBGColorFromCache(activityInfo, new IntSupplier() { // from class: com.android.wm.shell.startingsurface.SplashscreenContentDrawer$$ExternalSyntheticLambda5
                @Override // java.util.function.IntSupplier
                public final int getAsInt() {
                    return SplashscreenContentDrawer.estimateWindowBGColor(drawable);
                }
            });
        } else {
            bGColorFromCache = getBGColorFromCache(activityInfo, new SplashscreenContentDrawer$$ExternalSyntheticLambda1(this, context, 1));
        }
        SplashViewBuilder splashViewBuilder = new SplashViewBuilder(context, activityInfo);
        splashViewBuilder.mThemeColor = bGColorFromCache;
        splashViewBuilder.mOverlayDrawable = drawable;
        splashViewBuilder.mSuggestType = i;
        splashViewBuilder.mUiThreadInitTask = consumer;
        splashViewBuilder.mAllowHandleSolidColor = startingWindowInfo.allowHandleSolidColorSplashScreen();
        splashViewBuilder.mDisplayId = startingWindowInfo.taskInfo.displayId;
        return splashViewBuilder.build(false);
    }

    public final void updateDensity() {
        Context context = this.mContext;
        this.mIconSize = context.getResources().getDimensionPixelSize(17106171);
        this.mDefaultIconSize = context.getResources().getDimensionPixelSize(17106170);
        this.mBrandingImageWidth = context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.starting_surface_brand_image_width);
        this.mBrandingImageHeight = context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.starting_surface_brand_image_height);
    }
}
