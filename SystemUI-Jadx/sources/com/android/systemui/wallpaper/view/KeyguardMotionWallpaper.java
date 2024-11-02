package com.android.systemui.wallpaper.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.widgets.ConstraintWidget$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.punchhole.VIDirector$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.wallpaper.FixedOrientationController;
import com.android.systemui.wallpaper.WallpaperResultCallback;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.samsung.android.view.animation.SineOut33;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class KeyguardMotionWallpaper extends SystemUIWallpaper implements SensorEventListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ValueAnimator mAlphaAnimator;
    public float mAngularSum;
    public float mAnimatedAngularSum;
    public final Paint mBlendingPaint;
    public final Context mContext;
    public float mCroppedScale;
    public final int mCurrentWhich;
    public float mDeltaOfAngularSum;
    public final FixedOrientationController mFixedOrientationController;
    public final AnonymousClass2 mHandler;
    public final SineOut33 mInterpolator;
    public final Sensor mInterruptedGyro;
    public boolean mIsSensorRegistered;
    public int mLastHeight;
    public int mLastWidth;
    public AnonymousClass1 mLoader;
    public ArrayList mMotionBitmapList;
    public final ArrayList mOldBitmapList;
    public String mPkgName;
    public Resources mPkgResources;
    public float mPrevAngularSum;
    public float mPrevAnimatedAngularSum;
    public float mPrevStartAngularSum;
    public int mRangeOfRotation;
    public int mRotation;
    public final SensorManager mSensorManager;
    public long mTimestamp;
    public int mViewHeight;
    public int mViewWidth;
    public final WallpaperManager mWallpaperManager;
    public final WallpaperResultCallback mWallpaperResultCallback;
    public String mXmlName;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class MotionBitmap implements Cloneable {
        public int alpha;
        public float calculatedSum;
        public Bitmap image;
        public String path;
        public int prevAlpha;
        public int stayPoint1;
        public int stayPoint2;
        public int type;
        public Matrix matrix = new Matrix();
        public boolean isBackground = false;
        public boolean bitmapLoaded = false;

        public MotionBitmap() {
        }

        public final Object clone() {
            return (MotionBitmap) super.clone();
        }

        public final void setAlpha(float f, float f2) {
            boolean z;
            if (f < f2) {
                z = true;
            } else {
                z = false;
            }
            int i = KeyguardMotionWallpaper.this.mRangeOfRotation;
            float f3 = f2 % i;
            this.calculatedSum = f3;
            if (f3 > i - 3) {
                this.calculatedSum = f3 - i;
            } else if (f3 < -3.0f) {
                this.calculatedSum = f3 + i;
            }
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m(new StringBuilder("calculatedSum = "), this.calculatedSum, "KeyguardMotionWallpaper");
            float f4 = this.calculatedSum;
            int i2 = this.stayPoint1;
            if (f4 >= i2 && f4 <= this.stayPoint2) {
                this.isBackground = true;
            } else {
                if (this.isBackground) {
                    this.isBackground = false;
                }
                float f5 = i2;
                if (i2 == -3) {
                    f5 += KeyguardMotionWallpaper.this.mRangeOfRotation;
                }
                if (f4 > this.stayPoint2 && f4 < r7 + 24) {
                    if (!this.isBackground && z) {
                        this.isBackground = true;
                    }
                } else if (f4 < f5 && f4 > f5 - 24.0f && !this.isBackground && !z) {
                    this.isBackground = true;
                }
            }
            if (this.isBackground) {
                this.alpha = 0;
            } else {
                float f6 = i2;
                if (i2 == -3) {
                    f6 += KeyguardMotionWallpaper.this.mRangeOfRotation;
                }
                int i3 = this.stayPoint2;
                if (f4 > i3 && f4 < i3 + 24) {
                    this.alpha = (int) ((Math.abs(f4 - i3) / 24.0f) * 255.0f);
                    RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("Foreground alpha = "), this.alpha, "KeyguardMotionWallpaper");
                } else if (f4 < f6 && f4 > f6 - 24.0f) {
                    this.alpha = (int) ((Math.abs(f4 - f6) / 24.0f) * 255.0f);
                    RecyclerView$$ExternalSyntheticOutline0.m(new StringBuilder("Foreground alpha = "), this.alpha, "KeyguardMotionWallpaper");
                } else {
                    this.alpha = 255;
                    Log.d("KeyguardMotionWallpaper", "disappear!!");
                }
            }
            if (this.alpha > 255) {
                this.alpha = 255;
            }
            this.alpha = 255 - this.alpha;
        }
    }

    public KeyguardMotionWallpaper(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, WallpaperResultCallback wallpaperResultCallback, ExecutorService executorService, Consumer<Boolean> consumer, int i) {
        this(context, keyguardUpdateMonitor, wallpaperResultCallback, executorService, consumer, null, null, false, i);
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void cleanUp() {
        Log.d("KeyguardMotionWallpaper", "cleanUp");
        clearData(this.mOldBitmapList, false);
        clearData(this.mMotionBitmapList, false);
        this.mDrawingState = 3;
    }

    public final void clearData(ArrayList arrayList, boolean z) {
        String str;
        Bitmap bitmap;
        boolean z2;
        StringBuilder sb = new StringBuilder();
        if (this.mIsPreview) {
            str = "(Preview)";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("clearData: ");
        sb.append(arrayList.size());
        Log.i("KeyguardMotionWallpaper", sb.toString());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MotionBitmap motionBitmap = (MotionBitmap) it.next();
            motionBitmap.bitmapLoaded = false;
            boolean z3 = true;
            if (z && motionBitmap.image != null) {
                Iterator it2 = this.mMotionBitmapList.iterator();
                while (true) {
                    z2 = true;
                    while (it2.hasNext()) {
                        if (motionBitmap.image != ((MotionBitmap) it2.next()).image) {
                            break;
                        } else {
                            z2 = false;
                        }
                    }
                }
                z3 = z2;
            }
            if (z3 && (bitmap = motionBitmap.image) != null && !bitmap.isRecycled()) {
                motionBitmap.image.recycle();
                motionBitmap.image = null;
            }
        }
        arrayList.clear();
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final Bitmap getWallpaperBitmap() {
        Bitmap bitmap = null;
        try {
            Log.d("KeyguardMotionWallpaper", "getWallpaperBitmap() hw accelerated: " + isHardwareAccelerated());
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

    /* JADX WARN: Removed duplicated region for block: B:56:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void init() {
        /*
            Method dump skipped, instructions count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.init():void");
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onBackDropLayoutChange() {
        updateDisplayInfo();
        awaitCall();
        int i = this.mCurDisplayInfo.rotation;
        Log.i("KeyguardMotionWallpaper", "onConfigurationChanged: prev = " + this.mRotation + ", new = " + i);
        this.mRotation = i;
        if (!LsRune.WALLPAPER_ROTATABLE_WALLPAPER && !this.mIsPreview) {
            this.mFixedOrientationController.applyPortraitRotation();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Log.i("KeyguardMotionWallpaper", "onConfigurationChanged: prev = " + this.mOrientation + ", new = " + configuration.orientation + ", isSub:" + SystemUIWallpaper.isSubDisplay());
        if ((!LsRune.WALLPAPER_ROTATABLE_WALLPAPER || SystemUIWallpaper.isSubDisplay()) && !this.mIsPreview) {
            this.mFixedOrientationController.applyPortraitRotation();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mIsSensorRegistered) {
            unregisterSensor();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        String str;
        String str2 = "(Preview)";
        if (this.mIsPreview) {
            str = "(Preview)";
        } else {
            str = "";
        }
        Log.d("KeyguardMotionWallpaper", str.concat("onDraw()"));
        ArrayList arrayList = this.mMotionBitmapList;
        if (arrayList != null && arrayList.size() != 0) {
            int size = this.mMotionBitmapList.size();
            for (int i = 0; i < size; i++) {
                if (!((MotionBitmap) this.mMotionBitmapList.get(i)).bitmapLoaded) {
                    if (!this.mIsPreview) {
                        str2 = "";
                    }
                    Log.e("KeyguardMotionWallpaper", str2.concat("bitmapLoaded == false"));
                    return;
                }
            }
            canvas.save();
            int i2 = 1;
            boolean z = true;
            for (int i3 = 0; i3 < this.mMotionBitmapList.size(); i3++) {
                if (((MotionBitmap) this.mMotionBitmapList.get(i3)).isBackground) {
                    this.mBlendingPaint.setAlpha(((MotionBitmap) this.mMotionBitmapList.get(i3)).alpha);
                    Bitmap bitmap = ((MotionBitmap) this.mMotionBitmapList.get(i3)).image;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        canvas.drawBitmap(bitmap, ((MotionBitmap) this.mMotionBitmapList.get(i3)).matrix, this.mBlendingPaint);
                    } else {
                        Log.e("KeyguardMotionWallpaper", "onDraw: recycled bitmap1");
                        z = false;
                    }
                    RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("drawBackground!!!! ===> ", i3, ", alpha = "), ((MotionBitmap) this.mMotionBitmapList.get(i3)).alpha, "KeyguardMotionWallpaper");
                }
            }
            for (int i4 = 0; i4 < this.mMotionBitmapList.size(); i4++) {
                int i5 = ((MotionBitmap) this.mMotionBitmapList.get(i4)).alpha;
                if (!((MotionBitmap) this.mMotionBitmapList.get(i4)).isBackground && i5 != 0) {
                    this.mBlendingPaint.setAlpha(i5);
                    Bitmap bitmap2 = ((MotionBitmap) this.mMotionBitmapList.get(i4)).image;
                    if (bitmap2 != null && !bitmap2.isRecycled()) {
                        canvas.drawBitmap(bitmap2, ((MotionBitmap) this.mMotionBitmapList.get(i4)).matrix, this.mBlendingPaint);
                    } else {
                        Log.e("KeyguardMotionWallpaper", "onDraw: recycled bitmap2");
                        z = false;
                    }
                    RecyclerView$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("drawForeground!!!! ===> ", i4, ", alpha = "), ((MotionBitmap) this.mMotionBitmapList.get(i4)).alpha, "KeyguardMotionWallpaper");
                }
            }
            if (!z) {
                i2 = 2;
            }
            this.mDrawingState = i2;
            canvas.restore();
            return;
        }
        if (!this.mIsPreview) {
            str2 = "";
        }
        Log.e("KeyguardMotionWallpaper", str2.concat("mBitmapImageList == null || mBitmapImageList.size() == 0"));
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onKeyguardBouncerFullyShowingChanged(boolean z) {
        this.mBouncer = z;
        if (z && this.mIsSensorRegistered) {
            unregisterSensor();
        } else if (this.mIsKeyguardShowing) {
            registerSensor();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("onLayout called : ", i, " , ", i2, " , "), i3, " , ", i4, "KeyguardMotionWallpaper");
        if (z && i5 > 0 && i6 > 0 && !WallpaperUtils.isStatusBarHeight(getContext(), this, i4)) {
            if (this.mLastWidth != i5 || this.mLastHeight != i6) {
                init();
                this.mLastWidth = i5;
                this.mLastHeight = i6;
            }
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onPause() {
        String str;
        this.mResumed = false;
        if (this.mIsPreview) {
            str = "(Preview)";
        } else {
            str = "";
        }
        Log.d("KeyguardMotionWallpaper", str.concat("onPause()"));
        if (this.mIsSensorRegistered) {
            unregisterSensor();
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onResume() {
        String str;
        int i;
        ArrayList arrayList;
        this.mResumed = true;
        int i2 = WallpaperUtils.sCurrentWhich;
        StringBuilder sb = new StringBuilder();
        if (this.mIsPreview) {
            str = "(Preview)";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("onResume, mDrawingState:");
        sb.append(this.mDrawingState);
        sb.append(", this = ");
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(sb, this.mCurrentWhich, " , current = ", i2, "KeyguardMotionWallpaper");
        if (LsRune.WALLPAPER_SUB_DISPLAY_MODE && !this.mIsPreview && this.mCurrentWhich == i2 && ((i = this.mDrawingState) == 3 || i == 2 || (arrayList = this.mMotionBitmapList) == null || arrayList.size() == 0)) {
            Log.d("KeyguardMotionWallpaper", "onResume, reload");
            this.mDrawingState = 0;
            updateWallpaper();
        }
        if ((!LsRune.WALLPAPER_ROTATABLE_WALLPAPER || SystemUIWallpaper.isSubDisplay()) && !this.mIsPreview) {
            this.mFixedOrientationController.applyPortraitRotation();
        }
        if (!this.mIsSensorRegistered) {
            registerSensor();
        }
        init();
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        boolean z;
        Log.d("KeyguardMotionWallpaper", "onSensorChanged: " + sensorEvent.sensor.getType() + " , mTimestamp = " + this.mTimestamp + " , timestamp = " + sensorEvent.timestamp);
        if (sensorEvent.sensor.getType() == 65579) {
            if (this.mTimestamp != 0) {
                float[] fArr = sensorEvent.values;
                float f = fArr[0];
                float f2 = fArr[1];
                float f3 = fArr[2];
                int i = this.mCurDisplayInfo.rotation;
                if (i != 1 && i != 3 && this.mOrientation != 2) {
                    z = false;
                } else {
                    z = true;
                }
                if (!z && (Math.abs(f) > Math.abs(f2) || Math.abs(f3) > Math.abs(f2))) {
                    Log.e("KeyguardMotionWallpaper", "axisY is not biggest, stop animation");
                    return;
                }
                if (z && (Math.abs(f2) > Math.abs(f) || Math.abs(f3) > Math.abs(f))) {
                    Log.e("KeyguardMotionWallpaper", "axisX is not biggest, stop animation");
                    return;
                }
                float f4 = this.mAngularSum;
                this.mPrevAngularSum = f4;
                if (z) {
                    this.mAngularSum = f4 + f;
                } else {
                    this.mAngularSum = f4 + f2;
                }
                this.mDeltaOfAngularSum = Math.abs(this.mAngularSum - f4);
                StringBuilder m = VIDirector$$ExternalSyntheticOutline0.m("axisX: ", f, ", axisY: ", f2, ", axisZ: ");
                m.append(f3);
                Log.d("KeyguardMotionWallpaper", m.toString());
                StringBuilder sb = new StringBuilder("mAngularSum: ");
                sb.append(this.mAngularSum);
                sb.append(", mDeltaOfAngularSum: ");
                SeslColorSpectrumView$$ExternalSyntheticOutline0.m(sb, this.mDeltaOfAngularSum, "KeyguardMotionWallpaper");
                float[] fArr2 = {this.mPrevAngularSum, this.mAngularSum};
                for (int i2 = 0; i2 < this.mMotionBitmapList.size(); i2++) {
                    MotionBitmap motionBitmap = (MotionBitmap) this.mMotionBitmapList.get(i2);
                    motionBitmap.prevAlpha = motionBitmap.alpha;
                    motionBitmap.setAlpha(this.mPrevAngularSum, this.mAngularSum);
                    if (motionBitmap.prevAlpha != motionBitmap.alpha) {
                        if (this.mDeltaOfAngularSum < 3.0f) {
                            ValueAnimator valueAnimator = this.mAlphaAnimator;
                            if (valueAnimator != null) {
                                if (valueAnimator.isRunning()) {
                                    Log.e("KeyguardMotionWallpaper", "mAlphaAnimator isRunning");
                                    AnonymousClass2 anonymousClass2 = this.mHandler;
                                    anonymousClass2.sendMessage(anonymousClass2.obtainMessage(1, fArr2));
                                }
                            } else {
                                invalidate();
                            }
                        } else {
                            AnonymousClass2 anonymousClass22 = this.mHandler;
                            anonymousClass22.sendMessage(anonymousClass22.obtainMessage(1, fArr2));
                        }
                    }
                }
            }
            this.mTimestamp = sensorEvent.timestamp;
        }
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void onUnlock() {
        Log.d("KeyguardMotionWallpaper", "onUnlock()");
        if (this.mResumed && this.mIsSensorRegistered) {
            unregisterSensor();
        }
    }

    public final ArrayList parseXML(XmlPullParser xmlPullParser) {
        String name;
        int eventType = xmlPullParser.getEventType();
        ArrayList arrayList = null;
        MotionBitmap motionBitmap = null;
        while (eventType != 1) {
            if (eventType != 0) {
                if (eventType != 2) {
                    if (eventType == 3 && (name = xmlPullParser.getName()) != null && name.equalsIgnoreCase("layer") && motionBitmap != null && arrayList != null) {
                        arrayList.add(motionBitmap);
                    }
                } else {
                    String name2 = xmlPullParser.getName();
                    if (name2.equals("layer")) {
                        motionBitmap = new MotionBitmap();
                    } else if (motionBitmap != null) {
                        if (name2.equals("type")) {
                            motionBitmap.type = Integer.parseInt(xmlPullParser.nextText());
                        } else if (name2.equals("id_path_image")) {
                            motionBitmap.path = xmlPullParser.nextText();
                        }
                    }
                }
            } else {
                xmlPullParser.getName();
                arrayList = new ArrayList();
            }
            eventType = xmlPullParser.next();
        }
        return arrayList;
    }

    public final void registerSensor() {
        Log.d("KeyguardMotionWallpaper", "registerSensor");
        this.mSensorManager.registerListener(this, this.mInterruptedGyro, 1);
        this.mIsSensorRegistered = true;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void reset() {
        Log.d("KeyguardMotionWallpaper", "reset()");
        if (this.mResumed && !this.mIsSensorRegistered) {
            registerSensor();
        }
        init();
    }

    public final void startAlphaAnimator(float f, final float f2, boolean z) {
        Log.d("KeyguardMotionWallpaper", "mAlphaAnimator starts");
        Log.d("KeyguardMotionWallpaper", "prevAngularSum = " + f + " curAngularSum = " + f2);
        if (z) {
            float f3 = this.mPrevAnimatedAngularSum;
            this.mAnimatedAngularSum = f3;
            this.mPrevStartAngularSum = f3;
        } else {
            this.mAnimatedAngularSum = f;
            this.mPrevStartAngularSum = f;
        }
        this.mAlphaAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mAlphaAnimator.setDuration((int) (Math.abs(f2 - this.mPrevAnimatedAngularSum) * 16.0f));
        this.mAlphaAnimator.setInterpolator(this.mInterpolator);
        this.mAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.3
            /* JADX WARN: Code restructure failed: missing block: B:20:0x0026, code lost:
            
                if (r1 <= r7) goto L11;
             */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0019, code lost:
            
                if (r1 >= r7) goto L11;
             */
            /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
            
                r3 = false;
             */
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onAnimationUpdate(android.animation.ValueAnimator r7) {
                /*
                    r6 = this;
                    float r7 = r2
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r0 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    float r1 = r0.mPrevStartAngularSum
                    int r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
                    r2 = 1028443341(0x3d4ccccd, float:0.05)
                    r3 = 1
                    r4 = 0
                    if (r1 >= 0) goto L1c
                    float r1 = r0.mAnimatedAngularSum
                    float r5 = r1 - r7
                    float r5 = r5 * r2
                    float r1 = r1 - r5
                    r0.mAnimatedAngularSum = r1
                    int r7 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
                    if (r7 < 0) goto L29
                    goto L2a
                L1c:
                    float r1 = r0.mAnimatedAngularSum
                    float r1 = androidx.constraintlayout.core.widgets.analyzer.DependencyGraph$$ExternalSyntheticOutline0.m(r7, r1, r2, r1)
                    r0.mAnimatedAngularSum = r1
                    int r7 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
                    if (r7 > 0) goto L29
                    goto L2a
                L29:
                    r3 = r4
                L2a:
                    float r7 = r0.mPrevAnimatedAngularSum
                    float r0 = r0.mAnimatedAngularSum
                    float r7 = r7 - r0
                    float r7 = java.lang.Math.abs(r7)
                    r0 = 953267991(0x38d1b717, float:1.0E-4)
                    int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                    if (r7 <= 0) goto L77
                    if (r3 == 0) goto L77
                    java.lang.StringBuilder r7 = new java.lang.StringBuilder
                    java.lang.String r0 = "animatedAngle = "
                    r7.<init>(r0)
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r0 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    float r0 = r0.mAnimatedAngularSum
                    java.lang.String r1 = "KeyguardMotionWallpaper"
                    androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0.m(r7, r0, r1)
                L4c:
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r7 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    java.util.ArrayList r7 = r7.mMotionBitmapList
                    int r7 = r7.size()
                    if (r4 >= r7) goto L6c
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r7 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    java.util.ArrayList r7 = r7.mMotionBitmapList
                    java.lang.Object r7 = r7.get(r4)
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper$MotionBitmap r7 = (com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.MotionBitmap) r7
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r0 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    float r1 = r0.mPrevAnimatedAngularSum
                    float r0 = r0.mAnimatedAngularSum
                    r7.setAlpha(r1, r0)
                    int r4 = r4 + 1
                    goto L4c
                L6c:
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r7 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    r7.invalidate()
                    com.android.systemui.wallpaper.view.KeyguardMotionWallpaper r6 = com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.this
                    float r7 = r6.mAnimatedAngularSum
                    r6.mPrevAnimatedAngularSum = r7
                L77:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.AnonymousClass3.onAnimationUpdate(android.animation.ValueAnimator):void");
            }
        });
        this.mAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardMotionWallpaper.this.mAlphaAnimator = null;
            }
        });
        this.mAlphaAnimator.start();
    }

    public final void unregisterSensor() {
        Log.d("KeyguardMotionWallpaper", "unregisterSensor");
        this.mSensorManager.unregisterListener(this);
        this.mIsSensorRegistered = false;
    }

    @Override // com.android.systemui.wallpaper.view.SystemUIWallpaper, com.android.systemui.wallpaper.view.SystemUIWallpaperBase
    public final void update() {
        String motionWallpaperPkgName = this.mWallpaperManager.getMotionWallpaperPkgName(WallpaperUtils.sCurrentWhich);
        String str = "(Preview)";
        if (!TextUtils.isEmpty(motionWallpaperPkgName) && (motionWallpaperPkgName == null || !motionWallpaperPkgName.equals(this.mPkgName))) {
            StringBuilder sb = new StringBuilder();
            if (!this.mIsPreview) {
                str = "";
            }
            sb.append(str);
            sb.append("update() prev = ");
            sb.append(this.mPkgName);
            sb.append(", new = ");
            sb.append(motionWallpaperPkgName);
            Log.d("KeyguardMotionWallpaper", sb.toString());
            updateWallpaper();
            return;
        }
        if (!this.mIsPreview) {
            str = "";
        }
        Log.d("KeyguardMotionWallpaper", str.concat("same pkg, do not update() "));
        WallpaperResultCallback wallpaperResultCallback = this.mWallpaperResultCallback;
        if (wallpaperResultCallback != null) {
            wallpaperResultCallback.onPreviewReady();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.wallpaper.view.KeyguardMotionWallpaper$1] */
    public final void updateWallpaper() {
        String str;
        AnonymousClass1 anonymousClass1 = this.mLoader;
        String str2 = "(Preview)";
        if (anonymousClass1 != null && !anonymousClass1.isCancelled()) {
            StringBuilder sb = new StringBuilder();
            if (this.mIsPreview) {
                str = "(Preview)";
            } else {
                str = "";
            }
            sb.append(str);
            sb.append(" cancel loader = ");
            sb.append(this.mLoader);
            Log.i("KeyguardMotionWallpaper", sb.toString());
            cancel(true);
            this.mLoader = null;
        }
        this.mLoader = new AsyncTask() { // from class: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.1
            /* JADX WARN: Removed duplicated region for block: B:102:0x0223  */
            /* JADX WARN: Removed duplicated region for block: B:134:0x0150  */
            /* JADX WARN: Removed duplicated region for block: B:20:0x00f9  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0105  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x014e  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x016f  */
            /* JADX WARN: Removed duplicated region for block: B:52:0x0221  */
            /* JADX WARN: Removed duplicated region for block: B:77:0x03a9  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x03cb A[SYNTHETIC] */
            @Override // android.os.AsyncTask
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object doInBackground(java.lang.Object[] r22) {
                /*
                    Method dump skipped, instructions count: 1005
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.AnonymousClass1.doInBackground(java.lang.Object[]):java.lang.Object");
            }

            @Override // android.os.AsyncTask
            public final void onPostExecute(Object obj) {
                String str3;
                ArrayList arrayList = KeyguardMotionWallpaper.this.mMotionBitmapList;
                String str4 = "(Preview)";
                if (arrayList != null && arrayList.size() != 0) {
                    Iterator it = KeyguardMotionWallpaper.this.mMotionBitmapList.iterator();
                    while (it.hasNext()) {
                        ((MotionBitmap) it.next()).bitmapLoaded = true;
                    }
                    StringBuilder sb2 = new StringBuilder();
                    if (KeyguardMotionWallpaper.this.mIsPreview) {
                        str3 = "(Preview)";
                    } else {
                        str3 = "";
                    }
                    sb2.append(str3);
                    sb2.append("BITMAP LOAD FINISH ");
                    sb2.append(this);
                    Log.d("KeyguardMotionWallpaper", sb2.toString());
                    try {
                        ArrayList arrayList2 = KeyguardMotionWallpaper.this.mMotionBitmapList;
                        arrayList2.add((MotionBitmap) ((MotionBitmap) arrayList2.get(0)).clone());
                        ArrayList arrayList3 = KeyguardMotionWallpaper.this.mMotionBitmapList;
                        arrayList3.add((MotionBitmap) ((MotionBitmap) arrayList3.get(1)).clone());
                        KeyguardMotionWallpaper.this.mMotionBitmapList.remove(1);
                    } catch (CloneNotSupportedException unused) {
                        if (!KeyguardMotionWallpaper.this.mIsPreview) {
                            str4 = "";
                        }
                        Log.e("KeyguardMotionWallpaper", str4.concat("CloneNotSupportedException"));
                    } catch (IndexOutOfBoundsException unused2) {
                        if (!KeyguardMotionWallpaper.this.mIsPreview) {
                            str4 = "";
                        }
                        Log.e("KeyguardMotionWallpaper", str4.concat("IndexOutOfBoundsException"));
                    }
                    for (int i = 0; i < KeyguardMotionWallpaper.this.mMotionBitmapList.size(); i++) {
                        MotionBitmap motionBitmap = (MotionBitmap) KeyguardMotionWallpaper.this.mMotionBitmapList.get(i);
                        int i2 = i * 30;
                        motionBitmap.stayPoint1 = i2 - 3;
                        motionBitmap.stayPoint2 = i2 + 3;
                    }
                    ArrayList arrayList4 = KeyguardMotionWallpaper.this.mMotionBitmapList;
                    if (arrayList4 != null) {
                        Iterator it2 = arrayList4.iterator();
                        Log.d("KeyguardMotionWallpaper", "it = " + it2.hasNext());
                        int i3 = 0;
                        while (it2.hasNext()) {
                            MotionBitmap motionBitmap2 = (MotionBitmap) it2.next();
                            StringBuilder sb3 = new StringBuilder("layer ");
                            int i4 = i3 + 1;
                            sb3.append(i3);
                            sb3.append(" ");
                            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(sb3.toString(), "URL :");
                            m.append(motionBitmap2.image);
                            m.append(" / ");
                            MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("content = ", ConstraintWidget$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(ConstraintWidget$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(ConstraintWidget$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(m.toString(), "type :"), motionBitmap2.type, " / "), "stayPoint1 :"), motionBitmap2.stayPoint1, " / "), "stayPoint2 :"), motionBitmap2.stayPoint2, " / "), "KeyguardMotionWallpaper");
                            i3 = i4;
                        }
                    } else {
                        Log.e("KeyguardMotionWallpaper", "layers = null");
                    }
                    KeyguardMotionWallpaper keyguardMotionWallpaper = KeyguardMotionWallpaper.this;
                    if (keyguardMotionWallpaper.mWallpaperResultCallback != null && keyguardMotionWallpaper.mMotionBitmapList.size() > 0) {
                        KeyguardMotionWallpaper keyguardMotionWallpaper2 = KeyguardMotionWallpaper.this;
                        keyguardMotionWallpaper2.mWallpaperResultCallback.onDelegateBitmapReady(((MotionBitmap) keyguardMotionWallpaper2.mMotionBitmapList.get(0)).image);
                    }
                    KeyguardMotionWallpaper.this.init();
                    KeyguardMotionWallpaper keyguardMotionWallpaper3 = KeyguardMotionWallpaper.this;
                    keyguardMotionWallpaper3.clearData(keyguardMotionWallpaper3.mOldBitmapList, true);
                    return;
                }
                if (!KeyguardMotionWallpaper.this.mIsPreview) {
                    str4 = "";
                }
                Log.d("KeyguardMotionWallpaper", str4.concat("PARSE FAILED"));
                KeyguardMotionWallpaper.this.mDrawingState = 2;
            }
        };
        StringBuilder sb2 = new StringBuilder();
        if (!this.mIsPreview) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append("updateWallpaper: start load = ");
        sb2.append(this.mLoader);
        Log.i("KeyguardMotionWallpaper", sb2.toString());
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.wallpaper.view.KeyguardMotionWallpaper$2] */
    public KeyguardMotionWallpaper(Context context, KeyguardUpdateMonitor keyguardUpdateMonitor, WallpaperResultCallback wallpaperResultCallback, ExecutorService executorService, Consumer<Boolean> consumer, String str, String str2, boolean z, int i) {
        super(context, keyguardUpdateMonitor, wallpaperResultCallback, executorService, consumer, z);
        this.mRotation = 0;
        this.mMotionBitmapList = new ArrayList();
        this.mOldBitmapList = new ArrayList();
        this.mIsSensorRegistered = false;
        this.mCurrentWhich = 2;
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.systemui.wallpaper.view.KeyguardMotionWallpaper.2
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what == 1) {
                    KeyguardMotionWallpaper keyguardMotionWallpaper = KeyguardMotionWallpaper.this;
                    float[] fArr = (float[]) message.obj;
                    int i2 = KeyguardMotionWallpaper.$r8$clinit;
                    keyguardMotionWallpaper.getClass();
                    float f = fArr[0];
                    float f2 = fArr[1];
                    ValueAnimator valueAnimator = keyguardMotionWallpaper.mAlphaAnimator;
                    if (valueAnimator != null) {
                        if (valueAnimator.isRunning()) {
                            keyguardMotionWallpaper.mAlphaAnimator.end();
                            keyguardMotionWallpaper.startAlphaAnimator(f, f2, true);
                            return;
                        }
                        return;
                    }
                    keyguardMotionWallpaper.startAlphaAnimator(f, f2, false);
                }
            }
        };
        this.mInterpolator = new SineOut33();
        this.mPrevAngularSum = 0.0f;
        this.mAngularSum = 0.0f;
        this.mDeltaOfAngularSum = 0.0f;
        setWillNotDraw(false);
        this.mContext = context;
        this.mCurrentWhich = i;
        this.mWallpaperManager = (WallpaperManager) context.getSystemService("wallpaper");
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mInterruptedGyro = sensorManager.getDefaultSensor(65579);
        this.mFixedOrientationController = new FixedOrientationController(this);
        Paint paint = new Paint();
        this.mBlendingPaint = paint;
        paint.setFilterBitmap(true);
        paint.setAntiAlias(true);
        paint.setDither(true);
        this.mPkgName = str;
        this.mXmlName = str2;
        this.mWallpaperResultCallback = wallpaperResultCallback;
        updateWallpaper();
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }
}
