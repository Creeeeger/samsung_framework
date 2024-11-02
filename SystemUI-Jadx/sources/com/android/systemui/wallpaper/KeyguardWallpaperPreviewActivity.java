package com.android.systemui.wallpaper;

import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.wallpaper.view.SystemUIWallpaper;
import com.samsung.android.feature.SemFloatingFeature;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardWallpaperPreviewActivity extends Activity {
    public static boolean sConfigured = false;
    public static boolean sIsActivityAlive;
    public ImageView mBackgroundImageView;
    public ViewGroup mBottomContainer;
    public ImageView mCapturedImageView;
    public String mColorInfo;
    public Context mContext;
    public ContextThemeWrapper mContextThemeWrapper;
    public String mPackageName;
    public ViewGroup mPreviewArea;
    public FrameLayout mPreviewContainer;
    public FrameLayout mPreviewRootView;
    public ProgressBar mProgressBar;
    public FrameLayout mRootView;
    public RoundPreviewContainer mRoundContainer;
    public boolean mSetAsWallpaper;
    public Button mSetAsWallpaperButton;
    public TextView mSettingDescriptionTextView;
    public WallpaperManager mWallpaperManager;
    public int mWallpaperType;
    public SystemUIWallpaper mWallpaperView;
    public final ExecutorService mExecutor = Executors.newSingleThreadExecutor(new KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda1());
    public int mDescriptionCount = 0;
    public int mCurrentWhich = 2;
    public final AnonymousClass1 mWallpaperResultCallback = new WallpaperResultCallback() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperPreviewActivity.1
        @Override // com.android.systemui.wallpaper.WallpaperResultCallback
        public final void onDelegateBitmapReady(Bitmap bitmap) {
            KeyguardWallpaperPreviewActivity keyguardWallpaperPreviewActivity = KeyguardWallpaperPreviewActivity.this;
            KeyguardWallpaperPreviewActivity.m2444$$Nest$minitBackgroundImageView(keyguardWallpaperPreviewActivity, bitmap);
            keyguardWallpaperPreviewActivity.dismissProgressDialog();
        }

        @Override // com.android.systemui.wallpaper.WallpaperResultCallback
        public final void onDrawFinished() {
        }

        @Override // com.android.systemui.wallpaper.WallpaperResultCallback
        public final void onPreviewReady() {
        }
    };

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class RoundPreviewContainer extends FrameLayout {
        public final int roundRadius;

        public RoundPreviewContainer(Context context) {
            super(context);
            this.roundRadius = (int) TypedValue.applyDimension(1, SemFloatingFeature.getInstance().getInt("SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_ROUNDED_CORNER_RADIUS", 26), getResources().getDisplayMetrics());
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void dispatchDraw(Canvas canvas) {
            Path path = new Path();
            RectF rectF = new RectF(canvas.getClipBounds());
            int i = this.roundRadius;
            path.addRoundRect(rectF, i, i, Path.Direction.CW);
            canvas.clipPath(path);
            super.dispatchDraw(canvas);
        }
    }

    /* renamed from: -$$Nest$minitBackgroundImageView, reason: not valid java name */
    public static void m2444$$Nest$minitBackgroundImageView(KeyguardWallpaperPreviewActivity keyguardWallpaperPreviewActivity, Bitmap bitmap) {
        ImageView imageView = keyguardWallpaperPreviewActivity.mBackgroundImageView;
        if (bitmap == null) {
            Log.e("KeyguardWallpaperPreviewActivity", "initBackgroundImageView(): wallpaperBitmap is null");
            keyguardWallpaperPreviewActivity.finish();
            return;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width != 0 && height != 0) {
            int width2 = imageView.getWidth();
            int height2 = imageView.getHeight();
            if (width2 != 0 && height2 != 0) {
                KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("initBackgroundImageView() bw = ", width, " , bh = ", height, " , vw = "), width2, " , vh = ", height2, "KeyguardWallpaperPreviewActivity");
                Context context = keyguardWallpaperPreviewActivity.mContext;
                boolean z = WallpaperUtils.mIsEmergencyMode;
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                Bitmap blurredBitmap = WallpaperUtils.getBlurredBitmap(context, bitmap, displayMetrics.widthPixels, displayMetrics.heightPixels);
                imageView.setForeground(new ColorDrawable(1078807885));
                imageView.setImageBitmap(blurredBitmap);
                return;
            }
            Log.e("KeyguardWallpaperPreviewActivity", "initBackgroundImageView(): viewWidth=" + width2 + ", viewHeight=" + height2);
            keyguardWallpaperPreviewActivity.finish();
            return;
        }
        Log.e("KeyguardWallpaperPreviewActivity", "initBackgroundImageView(): bitmapWidth=" + width + ", bitmapHeight=" + height);
        keyguardWallpaperPreviewActivity.finish();
    }

    public static Size getScreenSize(Context context, boolean z) {
        int i;
        int i2 = context.getResources().getConfiguration().orientation;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        int i3 = point.x;
        int i4 = point.y;
        if (!z && i2 != 1) {
            i = i4;
        } else {
            i = i3;
        }
        if (z || i2 == 1) {
            i3 = i4;
        }
        return new Size(i, i3);
    }

    public final void dismissProgressDialog() {
        Log.d("KeyguardWallpaperPreviewActivity", "dismissProgressDialog()");
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null && progressBar.isAnimating()) {
            this.mPreviewRootView.setVisibility(0);
            this.mPreviewRootView.startAnimation(AnimationUtils.loadAnimation(this.mContext, R.anim.wallpaper_preview_fade_in));
            Animation loadAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.wallpaper_preview_fade_out);
            loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.android.systemui.wallpaper.KeyguardWallpaperPreviewActivity.4
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation) {
                    KeyguardWallpaperPreviewActivity.this.mProgressBar.setVisibility(8);
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation) {
                }
            });
            this.mProgressBar.startAnimation(loadAnimation);
        }
    }

    public final boolean isSubDisplay() {
        if (!LsRune.WALLPAPER_SUB_DISPLAY_MODE || this.mWallpaperManager.getLidState() != 0) {
            return false;
        }
        return true;
    }

    public final Bitmap loadAnimatedBackgroundBitmap() {
        Log.d("KeyguardWallpaperPreviewActivity", "loadAnimatedBackgroundBitmap()");
        Context context = this.mContext;
        new BitmapFactory.Options().inScaled = true;
        try {
            context = this.mContext.createPackageContext(this.mPackageName, 3);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e("KeyguardWallpaperPreviewActivity", "loadAnimatedBackgroundBitmap(): NameNotFoundException mPackageName=" + this.mPackageName);
        }
        int identifier = context.getResources().getIdentifier("lockscreen_wallpaper", "drawable", this.mPackageName);
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("loadAnimatedBackgroundBitmap: id = ", identifier, " , pkg = ");
        m.append(this.mPackageName);
        Log.i("KeyguardWallpaperPreviewActivity", m.toString());
        if (identifier > 0) {
            return ((BitmapDrawable) context.getDrawable(identifier)).getBitmap();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x053c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x05bb  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x05f5  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0632  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x072b  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x073a  */
    /* JADX WARN: Removed duplicated region for block: B:150:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x070e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0522  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r23) {
        /*
            Method dump skipped, instructions count: 1865
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.KeyguardWallpaperPreviewActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        Log.d("KeyguardWallpaperPreviewActivity", "onDestroy()");
        dismissProgressDialog();
        sIsActivityAlive = false;
        if (this.mSetAsWallpaper) {
            new Handler(Looper.getMainLooper()).postDelayed(new KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0(this, 1), 2500L);
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        Log.d("KeyguardWallpaperPreviewActivity", "onPause()");
        SystemUIWallpaper systemUIWallpaper = this.mWallpaperView;
        if (systemUIWallpaper != null) {
            systemUIWallpaper.onPause();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        String string;
        super.onResume();
        if (isInMultiWindowMode()) {
            Toast.makeText(this.mContextThemeWrapper, R.string.kg_wallpaper_preview_disable_multi_window, 1).show();
            semExitMultiWindowMode();
        }
        this.mCurrentWhich = WallpaperUtils.getFolderStateBasedWhich(2, this.mContext);
        RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("onResume() which = "), this.mCurrentWhich, "KeyguardWallpaperPreviewActivity");
        SystemUIWallpaper systemUIWallpaper = this.mWallpaperView;
        if (systemUIWallpaper != null) {
            systemUIWallpaper.onResume();
        }
        Context context = this.mContext;
        String string2 = context.getString(R.string.kg_wallpaper_preview_title_lock);
        int i = this.mWallpaperType;
        if (i != 1 && i != 2) {
            if (i != 4) {
                string = "";
            } else {
                string = context.getString(R.string.kg_wallpaper_preview_title_animated);
            }
        } else {
            string = context.getString(R.string.kg_wallpaper_preview_title_motion);
        }
        this.mPreviewContainer.setContentDescription(context.getString(R.string.kg_wallpaper_content_desc, string, string2));
    }

    public final void setSystemSettings(int i, String str) {
        Log.d("KeyguardWallpaperPreviewActivity", "setSystemSettings(): key=" + str + ", value=" + i);
        if (Settings.System.getInt(this.mContext.getContentResolver(), str, 1) != i) {
            Settings.System.putInt(this.mContext.getContentResolver(), str, i);
        }
    }

    public final void setSystemSettingsForUser(int i, int i2, String str) {
        Log.d("KeyguardWallpaperPreviewActivity", "setSystemSettingsForUser(): key=" + str + ", value=" + i2);
        if (Settings.System.getIntForUser(this.mContext.getContentResolver(), str, i, -2) != i2) {
            Settings.System.putIntForUser(this.mContext.getContentResolver(), str, i2, -2);
        }
    }

    public final void showProgressDialog() {
        Log.d("KeyguardWallpaperPreviewActivity", "showProgressDialog()");
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null && !progressBar.isAnimating()) {
            this.mPreviewRootView.setVisibility(4);
            this.mProgressBar.setVisibility(0);
        }
    }
}
