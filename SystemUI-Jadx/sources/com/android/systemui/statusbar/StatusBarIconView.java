package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Notification;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Trace;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import androidx.core.graphics.ColorUtils;
import com.android.app.animation.Interpolators;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.ContrastColorUtil;
import com.android.systemui.R;
import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.notification.NotificationDozeHelper;
import com.android.systemui.statusbar.notification.NotificationIconDozeHelper;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.phone.DoubleShadowStatusBarIconDrawable;
import com.android.systemui.statusbar.phone.NotificationIconContainer$$ExternalSyntheticLambda0;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class StatusBarIconView extends AnimatedImageView implements StatusIconDisplayable {
    public final boolean mAlwaysScaleIcon;
    public int mAnimationStartColor;
    public boolean mApplyShadowEffect;
    public boolean mBlockDotAnim;
    public final boolean mBlocked;
    public ValueAnimator mColorAnimator;
    public final StatusBarIconView$$ExternalSyntheticLambda0 mColorUpdater;
    public int mCurrentSetColor;
    public int mDecorColor;
    public int mDensity;
    public ObjectAnimator mDotAnimator;
    public float mDotAppearAmount;
    public final Paint mDotPaint;
    public float mDotRadius;
    public DoubleShadowStatusBarIconDrawable mDoubleShadowIconDrawable;
    public float mDozeAmount;
    public final NotificationIconDozeHelper mDozer;
    public int mDrawableColor;
    public StatusBarIcon mIcon;
    public float mIconAppearAmount;
    public ObjectAnimator mIconAppearAnimator;
    public int mIconColor;
    public Rect mIconRect;
    public float mIconScale;
    public float mIconScaleFactor;
    public boolean mIncreasedSize;
    public Runnable mLayoutRunnable;
    public float[] mMatrix;
    public ColorMatrixColorFilter mMatrixColorFilter;
    public StatusBarNotification mNotification;
    public Drawable mNumberBackground;
    public final Paint mNumberPain;
    public String mNumberText;
    public int mNumberX;
    public int mNumberY;
    public Runnable mOnDismissListener;
    public boolean mShowsConversation;
    public final String mSlot;
    public int mStaticDotRadius;
    public int mStatusBarIconDrawingSize;
    public int mStatusBarIconDrawingSizeIncreased;
    public int mStatusBarIconSize;
    public int mVisibleState;
    public static final AnonymousClass1 ICON_APPEAR_AMOUNT = new FloatProperty("iconAppearAmount") { // from class: com.android.systemui.statusbar.StatusBarIconView.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((StatusBarIconView) obj).mIconAppearAmount);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f) {
            StatusBarIconView statusBarIconView = (StatusBarIconView) obj;
            if (statusBarIconView.mIconAppearAmount != f) {
                statusBarIconView.mIconAppearAmount = f;
                statusBarIconView.invalidate();
            }
        }
    };
    public static final AnonymousClass2 DOT_APPEAR_AMOUNT = new FloatProperty("dot_appear_amount") { // from class: com.android.systemui.statusbar.StatusBarIconView.2
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((StatusBarIconView) obj).mDotAppearAmount);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f) {
            StatusBarIconView statusBarIconView = (StatusBarIconView) obj;
            if (statusBarIconView.mDotAppearAmount != f) {
                statusBarIconView.mDotAppearAmount = f;
                statusBarIconView.invalidate();
            }
        }
    };

    public StatusBarIconView(Context context, String str, StatusBarNotification statusBarNotification) {
        this(context, str, statusBarNotification, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.CharSequence] */
    public static String contentDescForNotification(Context context, Notification notification2) {
        String str;
        String str2 = "";
        try {
            str = Notification.Builder.recoverBuilder(context, notification2).loadHeaderAppName();
        } catch (RuntimeException e) {
            Log.e("StatusBarIconView", "Unable to recover builder", e);
            ApplicationInfo applicationInfo = (ApplicationInfo) notification2.extras.getParcelable("android.appInfo", ApplicationInfo.class);
            if (applicationInfo == null) {
                str = "";
            } else {
                str = String.valueOf(applicationInfo.loadLabel(context.getPackageManager()));
            }
        }
        ?? charSequence = notification2.extras.getCharSequence("android.title");
        ?? charSequence2 = notification2.extras.getCharSequence("android.text");
        ?? r6 = notification2.tickerText;
        boolean equals = TextUtils.equals(charSequence, str);
        String str3 = charSequence;
        if (equals) {
            str3 = charSequence2;
        }
        if (!TextUtils.isEmpty(str3)) {
            str2 = str3;
        } else if (!TextUtils.isEmpty(r6)) {
            str2 = r6;
        }
        return context.getString(R.string.accessibility_desc_notification_icon, str, str2);
    }

    public static String getVisibleStateString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return "UNKNOWN";
                }
                return "HIDDEN";
            }
            return "DOT";
        }
        return "ICON";
    }

    public final void createDoubleShadowDrawable() {
        if (!this.mSlot.equals("ime")) {
            DoubleShadowStatusBarIconDrawable doubleShadowStatusBarIconDrawable = new DoubleShadowStatusBarIconDrawable(getDrawable(), getContext(), getWidth(), getHeight());
            this.mDoubleShadowIconDrawable = doubleShadowStatusBarIconDrawable;
            doubleShadowStatusBarIconDrawable.drawShadowOnly = true;
        }
    }

    public final void debug(int i) {
        super.debug(i);
        Log.d("View", ImageView.debugIndent(i) + "slot=" + this.mSlot);
        Log.d("View", ImageView.debugIndent(i) + "icon=" + this.mIcon);
    }

    @Override // android.view.View
    public final void getDrawingRect(Rect rect) {
        super.getDrawingRect(rect);
        float translationX = getTranslationX();
        float translationY = getTranslationY();
        rect.left = (int) (rect.left + translationX);
        rect.right = (int) (rect.right + translationX);
        rect.top = (int) (rect.top + translationY);
        rect.bottom = (int) (rect.bottom + translationY);
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.graphics.drawable.Drawable getIcon(com.android.internal.statusbar.StatusBarIcon r18) {
        /*
            Method dump skipped, instructions count: 695
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.StatusBarIconView.getIcon(com.android.internal.statusbar.StatusBarIcon):android.graphics.drawable.Drawable");
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final String getSlot() {
        return this.mSlot;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final int getVisibleState() {
        return this.mVisibleState;
    }

    @Override // com.android.systemui.statusbar.AnimatedImageView, android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final boolean isIconBlocked() {
        return this.mBlocked;
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final boolean isIconVisible() {
        StatusBarIcon statusBarIcon = this.mIcon;
        if (statusBarIcon != null && statusBarIcon.visible) {
            return true;
        }
        return false;
    }

    public final void maybeUpdateIconScaleDimens() {
        int i;
        if (this.mNotification == null && !this.mAlwaysScaleIcon) {
            this.mIconScale = 1.0f;
            return;
        }
        if (this.mIncreasedSize) {
            i = this.mStatusBarIconDrawingSizeIncreased;
        } else {
            i = this.mStatusBarIconDrawingSize;
        }
        this.mIconScale = i / this.mStatusBarIconSize;
        updatePivot();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.densityDpi;
        if (i != this.mDensity) {
            this.mDensity = i;
            reloadDimens();
            updateDrawable(true);
            maybeUpdateIconScaleDimens();
        }
    }

    @Override // com.android.systemui.plugins.DarkIconDispatcher.DarkReceiver
    public final void onDarkChanged(ArrayList arrayList, float f, int i) {
        int tint = DarkIconDispatcher.getTint(arrayList, this, i);
        setImageTintList(ColorStateList.valueOf(tint));
        setDecorColor(tint);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        float interpolate;
        if (this.mIconAppearAmount > 0.0f) {
            canvas.save();
            float f = this.mIconScale;
            float f2 = this.mIconAppearAmount;
            canvas.scale(f * f2, f * f2, getWidth() / 2, getHeight() / 2);
            DoubleShadowStatusBarIconDrawable doubleShadowStatusBarIconDrawable = this.mDoubleShadowIconDrawable;
            if (doubleShadowStatusBarIconDrawable != null) {
                doubleShadowStatusBarIconDrawable.draw(canvas);
            }
            super.onDraw(canvas);
            canvas.restore();
        }
        Drawable drawable = this.mNumberBackground;
        if (drawable != null) {
            drawable.draw(canvas);
            canvas.drawText(this.mNumberText, this.mNumberX, this.mNumberY, this.mNumberPain);
        }
        if (this.mDotAppearAmount != 0.0f) {
            float alpha = Color.alpha(this.mDecorColor) / 255.0f;
            float f3 = this.mDotAppearAmount;
            if (f3 <= 1.0f) {
                interpolate = this.mDotRadius * f3;
            } else {
                float f4 = f3 - 1.0f;
                alpha *= 1.0f - f4;
                interpolate = NotificationUtils.interpolate(this.mDotRadius, getWidth() / 4, f4);
            }
            this.mDotPaint.setAlpha((int) (alpha * 255.0f));
            canvas.drawCircle(this.mStatusBarIconSize / 2, getHeight() / 2, interpolate, this.mDotPaint);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        StatusBarNotification statusBarNotification = this.mNotification;
        if (statusBarNotification != null) {
            accessibilityEvent.setParcelableData(statusBarNotification.getNotification());
        }
    }

    @Override // android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Runnable runnable = this.mLayoutRunnable;
        if (runnable != null) {
            runnable.run();
            this.mLayoutRunnable = null;
        }
        updatePivot();
        if (this.mApplyShadowEffect && getDrawable() != null) {
            Rect rect = new Rect(0, 0, getWidth(), getHeight());
            if (!rect.equals(this.mIconRect)) {
                this.mIconRect = rect;
                createDoubleShadowDrawable();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        updateDrawable(true);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.mNumberBackground != null) {
            placeNumber();
        }
    }

    public final void placeNumber() {
        String format;
        if (this.mIcon.number > getContext().getResources().getInteger(android.R.integer.status_bar_notification_info_maxnum)) {
            format = getContext().getResources().getString(android.R.string.status_bar_notification_info_overflow);
        } else {
            format = NumberFormat.getIntegerInstance().format(this.mIcon.number);
        }
        this.mNumberText = format;
        int width = getWidth();
        int height = getHeight();
        Rect rect = new Rect();
        this.mNumberPain.getTextBounds(format, 0, format.length(), rect);
        int i = rect.right - rect.left;
        int i2 = rect.bottom - rect.top;
        this.mNumberBackground.getPadding(rect);
        int i3 = rect.left + i + rect.right;
        if (i3 < this.mNumberBackground.getMinimumWidth()) {
            i3 = this.mNumberBackground.getMinimumWidth();
        }
        int i4 = rect.right;
        this.mNumberX = (width - i4) - (((i3 - i4) - rect.left) / 2);
        int i5 = rect.top + i2 + rect.bottom;
        if (i5 < this.mNumberBackground.getMinimumWidth()) {
            i5 = this.mNumberBackground.getMinimumWidth();
        }
        int i6 = rect.bottom;
        this.mNumberY = (height - i6) - ((((i5 - rect.top) - i2) - i6) / 2);
        this.mNumberBackground.setBounds(width - i3, height - i5, width, height);
    }

    public final void reloadDimens() {
        boolean z;
        if (this.mDotRadius == this.mStaticDotRadius) {
            z = true;
        } else {
            z = false;
        }
        Resources resources = getResources();
        this.mStaticDotRadius = resources.getDimensionPixelSize(R.dimen.overflow_dot_radius);
        this.mStatusBarIconSize = resources.getDimensionPixelSize(R.dimen.notification_icon_view_width);
        this.mStatusBarIconDrawingSizeIncreased = resources.getDimensionPixelSize(R.dimen.status_bar_icon_drawing_size_dark);
        this.mStatusBarIconDrawingSize = resources.getDimensionPixelSize(R.dimen.status_bar_icon_drawing_size);
        if (z) {
            this.mDotRadius = this.mStaticDotRadius;
        }
        resources.getDimension(17106184);
        resources.getDimension(17106183);
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0049, code lost:
    
        if (r0.getResId() == r3.getResId()) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean set(com.android.internal.statusbar.StatusBarIcon r8) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.StatusBarIconView.set(com.android.internal.statusbar.StatusBarIcon):boolean");
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setDecorColor(int i) {
        this.mDecorColor = i;
        updateDecorColor();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.systemui.statusbar.StatusBarIconView$$ExternalSyntheticLambda1] */
    public final void setDozing$1(boolean z, boolean z2) {
        float f;
        NotificationIconDozeHelper notificationIconDozeHelper = this.mDozer;
        final ?? r1 = new Consumer() { // from class: com.android.systemui.statusbar.StatusBarIconView$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                boolean z3;
                AnimationDrawable animationDrawable;
                StatusBarIconView statusBarIconView = StatusBarIconView.this;
                StatusBarIconView.AnonymousClass1 anonymousClass1 = StatusBarIconView.ICON_APPEAR_AMOUNT;
                statusBarIconView.getClass();
                statusBarIconView.mDozeAmount = ((Float) obj).floatValue();
                statusBarIconView.updateDecorColor();
                statusBarIconView.updateIconColor();
                float f2 = statusBarIconView.mDozeAmount;
                if (f2 == 0.0f || f2 == 1.0f) {
                    boolean z4 = false;
                    if (f2 == 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (statusBarIconView.mAllowAnimation != z3) {
                        statusBarIconView.mAllowAnimation = z3;
                        statusBarIconView.updateAnim();
                        if (!statusBarIconView.mAllowAnimation && (animationDrawable = statusBarIconView.mAnim) != null) {
                            if (statusBarIconView.getVisibility() == 0) {
                                z4 = true;
                            }
                            animationDrawable.setVisible(z4, true);
                        }
                    }
                }
            }
        };
        notificationIconDozeHelper.getClass();
        float f2 = 1.0f;
        if (z2) {
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.notification.NotificationDozeHelper$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    r1.accept((Float) valueAnimator.getAnimatedValue());
                }
            };
            NotificationDozeHelper.AnonymousClass3 anonymousClass3 = new AnimatorListenerAdapter(notificationIconDozeHelper, this) { // from class: com.android.systemui.statusbar.notification.NotificationDozeHelper.3
                public final /* synthetic */ View val$view;

                public AnonymousClass3(NotificationDozeHelper notificationIconDozeHelper2, final View this) {
                    this.val$view = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    this.val$view.setTag(R.id.doze_intensity_tag, null);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    this.val$view.setTag(R.id.doze_intensity_tag, animator);
                }
            };
            if (z) {
                f = 0.0f;
            } else {
                f = 1.0f;
            }
            if (!z) {
                f2 = 0.0f;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
            ofFloat.addUpdateListener(animatorUpdateListener);
            ofFloat.setDuration(500L);
            ofFloat.setInterpolator(Interpolators.LINEAR_OUT_SLOW_IN);
            ofFloat.setStartDelay(0L);
            ofFloat.addListener(anonymousClass3);
            ofFloat.start();
            return;
        }
        Animator animator = (Animator) getTag(R.id.doze_intensity_tag);
        if (animator != null) {
            animator.cancel();
        }
        if (!z) {
            f2 = 0.0f;
        }
        r1.accept(Float.valueOf(f2));
    }

    public final void setIconColor(int i, boolean z) {
        if (this.mIconColor != i) {
            this.mIconColor = i;
            ValueAnimator valueAnimator = this.mColorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            int i2 = this.mCurrentSetColor;
            if (i2 == i) {
                return;
            }
            if (z && i2 != 0) {
                this.mAnimationStartColor = i2;
                ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                this.mColorAnimator = ofFloat;
                ofFloat.setInterpolator(Interpolators.FAST_OUT_SLOW_IN);
                this.mColorAnimator.setDuration(100L);
                this.mColorAnimator.addUpdateListener(this.mColorUpdater);
                this.mColorAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.StatusBarIconView.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        StatusBarIconView statusBarIconView = StatusBarIconView.this;
                        statusBarIconView.mColorAnimator = null;
                        statusBarIconView.mAnimationStartColor = 0;
                    }
                });
                this.mColorAnimator.start();
                return;
            }
            this.mCurrentSetColor = i;
            updateIconColor();
        }
    }

    public final void setNotification(StatusBarNotification statusBarNotification) {
        Notification notification2;
        this.mNotification = statusBarNotification;
        if (statusBarNotification != null && (notification2 = statusBarNotification.getNotification()) != null) {
            String contentDescForNotification = contentDescForNotification(((ImageView) this).mContext, notification2);
            if (!TextUtils.isEmpty(contentDescForNotification)) {
                setContentDescription(contentDescForNotification);
            }
        }
        maybeUpdateIconScaleDimens();
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setStaticDrawableColor(int i) {
        this.mDrawableColor = i;
        this.mCurrentSetColor = i;
        updateIconColor();
        if (Color.alpha(0) == 255) {
            int i2 = this.mDrawableColor;
            if (!ContrastColorUtil.satisfiesTextContrast(0, i2)) {
                float[] fArr = new float[3];
                int i3 = this.mDrawableColor;
                ThreadLocal threadLocal = ColorUtils.TEMP_ARRAY;
                ColorUtils.RGBToHSL(Color.red(i3), Color.green(i3), Color.blue(i3), fArr);
                if (fArr[1] < 0.2f) {
                    i2 = 0;
                }
                ContrastColorUtil.resolveContrastColor(((ImageView) this).mContext, i2, 0, !ContrastColorUtil.isColorLight(0));
            }
        }
        this.mIconColor = i;
        this.mDozer.getClass();
    }

    @Override // android.widget.ImageView, android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setVisibleState(int i) {
        setVisibleState(i, true, null, 0L);
    }

    @Override // android.view.View
    public final String toString() {
        return "StatusBarIconView(slot='" + this.mSlot + "' alpha=" + getAlpha() + " icon=" + this.mIcon + " visibleState=" + getVisibleStateString(this.mVisibleState) + " iconColor=#" + Integer.toHexString(this.mIconColor) + " notification=" + this.mNotification + ')';
    }

    public final void updateDecorColor() {
        int interpolateColors = NotificationUtils.interpolateColors(this.mDozeAmount, this.mDecorColor, -1);
        if (this.mDotPaint.getColor() != interpolateColors) {
            this.mDotPaint.setColor(interpolateColors);
            if (this.mDotAppearAmount != 0.0f) {
                invalidate();
            }
        }
    }

    public final boolean updateDrawable(boolean z) {
        if (this.mIcon == null) {
            return false;
        }
        try {
            Trace.beginSection("StatusBarIconView#updateDrawable()");
            Drawable icon = getIcon(this.mIcon);
            if (icon == null) {
                Log.w("StatusBarIconView", "No icon for slot " + this.mSlot + "; " + this.mIcon.icon);
                return false;
            }
            if (z) {
                setImageDrawable(null);
            }
            setImageDrawable(icon);
            if (this.mApplyShadowEffect) {
                createDoubleShadowDrawable();
                return true;
            }
            return true;
        } catch (OutOfMemoryError unused) {
            Log.w("StatusBarIconView", "OOM while inflating " + this.mIcon.icon + " for slot " + this.mSlot);
            return false;
        } finally {
            Trace.endSection();
        }
    }

    public final void updateIconColor() {
        if (!this.mShowsConversation && !Boolean.TRUE.equals(getTag(R.id.conversation_notification))) {
            if (this.mCurrentSetColor != 0) {
                if (this.mMatrixColorFilter == null) {
                    this.mMatrix = new float[20];
                    this.mMatrixColorFilter = new ColorMatrixColorFilter(this.mMatrix);
                }
                int interpolateColors = NotificationUtils.interpolateColors(this.mDozeAmount, this.mCurrentSetColor, -1);
                float[] fArr = this.mMatrix;
                float f = this.mDozeAmount * 0.67f;
                Arrays.fill(fArr, 0.0f);
                fArr[4] = Color.red(interpolateColors);
                fArr[9] = Color.green(interpolateColors);
                fArr[14] = Color.blue(interpolateColors);
                fArr[18] = (Color.alpha(interpolateColors) / 255.0f) + f;
                this.mMatrixColorFilter.setColorMatrixArray(this.mMatrix);
                setColorFilter((ColorFilter) null);
                setColorFilter(this.mMatrixColorFilter);
                return;
            }
            NotificationIconDozeHelper notificationIconDozeHelper = this.mDozer;
            float f2 = this.mDozeAmount;
            if (f2 > 0.0f) {
                ColorMatrix colorMatrix = notificationIconDozeHelper.mGrayscaleColorMatrix;
                colorMatrix.setSaturation(1.0f - f2);
                setColorFilter(new ColorMatrixColorFilter(colorMatrix));
                return;
            } else {
                notificationIconDozeHelper.getClass();
                setColorFilter((ColorFilter) null);
                return;
            }
        }
        setColorFilter((ColorFilter) null);
    }

    public final void updatePivot() {
        if (isLayoutRtl()) {
            setPivotX(((this.mIconScale + 1.0f) / 2.0f) * getWidth());
        } else {
            setPivotX(((1.0f - this.mIconScale) / 2.0f) * getWidth());
        }
        setPivotY((getHeight() - (this.mIconScale * getWidth())) / 2.0f);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.android.systemui.statusbar.StatusBarIconView$$ExternalSyntheticLambda0] */
    public StatusBarIconView(Context context, String str, StatusBarNotification statusBarNotification, boolean z) {
        super(context);
        this.mStatusBarIconDrawingSizeIncreased = 1;
        this.mStatusBarIconDrawingSize = 1;
        this.mStatusBarIconSize = 1;
        this.mIconScale = 1.0f;
        this.mDotPaint = new Paint(1);
        final int i = 0;
        this.mVisibleState = 0;
        this.mIconAppearAmount = 1.0f;
        this.mCurrentSetColor = 0;
        this.mAnimationStartColor = 0;
        this.mColorUpdater = new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.systemui.statusbar.StatusBarIconView$$ExternalSyntheticLambda0
            public final /* synthetic */ StatusBarIconView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i) {
                    case 0:
                        StatusBarIconView statusBarIconView = this.f$0;
                        statusBarIconView.mCurrentSetColor = NotificationUtils.interpolateColors(valueAnimator.getAnimatedFraction(), statusBarIconView.mAnimationStartColor, statusBarIconView.mIconColor);
                        statusBarIconView.updateIconColor();
                        return;
                    default:
                        StatusBarIconView statusBarIconView2 = this.f$0;
                        statusBarIconView2.mCurrentSetColor = NotificationUtils.interpolateColors(valueAnimator.getAnimatedFraction(), statusBarIconView2.mAnimationStartColor, statusBarIconView2.mIconColor);
                        statusBarIconView2.updateIconColor();
                        return;
                }
            }
        };
        this.mDoubleShadowIconDrawable = null;
        this.mIconRect = new Rect(0, 0, 0, 0);
        this.mApplyShadowEffect = false;
        this.mDozer = new NotificationIconDozeHelper(context);
        this.mBlocked = z;
        this.mSlot = str;
        Paint paint = new Paint();
        this.mNumberPain = paint;
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setColor(context.getColor(R.drawable.notification_number_text_color));
        paint.setAntiAlias(true);
        setNotification(statusBarNotification);
        setScaleType(ImageView.ScaleType.CENTER);
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
        boolean z2 = (context.getResources().getConfiguration().uiMode & 48) == 32;
        if (this.mNotification != null) {
            setDecorColor(getContext().getColor(z2 ? 17171152 : 17171153));
        }
        reloadDimens();
        maybeUpdateIconScaleDimens();
    }

    @Override // com.android.systemui.statusbar.StatusIconDisplayable
    public final void setVisibleState(int i, boolean z) {
        setVisibleState(i, z, null, 0L);
    }

    public final void setVisibleState(int i, boolean z, final NotificationIconContainer$$ExternalSyntheticLambda0 notificationIconContainer$$ExternalSyntheticLambda0, long j) {
        float f;
        Interpolator interpolator;
        boolean z2;
        boolean z3 = false;
        if (i != this.mVisibleState) {
            this.mVisibleState = i;
            ObjectAnimator objectAnimator = this.mIconAppearAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            ObjectAnimator objectAnimator2 = this.mDotAnimator;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
            }
            if (z) {
                Interpolator interpolator2 = Interpolators.FAST_OUT_LINEAR_IN;
                if (i == 0) {
                    interpolator = Interpolators.LINEAR_OUT_SLOW_IN;
                    f = 1.0f;
                } else {
                    f = 0.0f;
                    interpolator = interpolator2;
                }
                float f2 = this.mIconAppearAmount;
                if (f != f2) {
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ICON_APPEAR_AMOUNT, f2, f);
                    this.mIconAppearAnimator = ofFloat;
                    ofFloat.setInterpolator(interpolator);
                    this.mIconAppearAnimator.setDuration(j == 0 ? 100L : j);
                    this.mIconAppearAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.StatusBarIconView.4
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            StatusBarIconView.this.mIconAppearAnimator = null;
                            Runnable runnable = notificationIconContainer$$ExternalSyntheticLambda0;
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                    });
                    this.mIconAppearAnimator.start();
                    z2 = true;
                } else {
                    z2 = false;
                }
                float f3 = i == 0 ? 2.0f : 0.0f;
                if (i == 1) {
                    interpolator2 = Interpolators.LINEAR_OUT_SLOW_IN;
                    f3 = 1.0f;
                }
                float f4 = this.mDotAppearAmount;
                if (f3 == f4 || this.mBlockDotAnim) {
                    z3 = z2;
                } else {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, DOT_APPEAR_AMOUNT, f4, f3);
                    this.mDotAnimator = ofFloat2;
                    ofFloat2.setInterpolator(interpolator2);
                    this.mDotAnimator.setDuration(j != 0 ? j : 100L);
                    final boolean z4 = !z2;
                    this.mDotAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.StatusBarIconView.5
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            Runnable runnable;
                            StatusBarIconView.this.mDotAnimator = null;
                            if (z4 && (runnable = notificationIconContainer$$ExternalSyntheticLambda0) != null) {
                                runnable.run();
                            }
                        }
                    });
                    this.mDotAnimator.start();
                    z3 = true;
                }
            } else {
                float f5 = i == 0 ? 1.0f : 0.0f;
                if (this.mIconAppearAmount != f5) {
                    this.mIconAppearAmount = f5;
                    invalidate();
                }
                float f6 = i == 1 ? 1.0f : i == 0 ? 2.0f : 0.0f;
                if (this.mDotAppearAmount != f6) {
                    this.mDotAppearAmount = f6;
                    invalidate();
                }
            }
        }
        if (z3 || notificationIconContainer$$ExternalSyntheticLambda0 == null) {
            return;
        }
        notificationIconContainer$$ExternalSyntheticLambda0.run();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.StatusBarIconView$$ExternalSyntheticLambda0] */
    public StatusBarIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        final int i = 1;
        this.mStatusBarIconDrawingSizeIncreased = 1;
        this.mStatusBarIconDrawingSize = 1;
        this.mStatusBarIconSize = 1;
        this.mIconScale = 1.0f;
        this.mDotPaint = new Paint(1);
        this.mVisibleState = 0;
        this.mIconAppearAmount = 1.0f;
        this.mCurrentSetColor = 0;
        this.mAnimationStartColor = 0;
        this.mColorUpdater = new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.systemui.statusbar.StatusBarIconView$$ExternalSyntheticLambda0
            public final /* synthetic */ StatusBarIconView f$0;

            {
                this.f$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                switch (i) {
                    case 0:
                        StatusBarIconView statusBarIconView = this.f$0;
                        statusBarIconView.mCurrentSetColor = NotificationUtils.interpolateColors(valueAnimator.getAnimatedFraction(), statusBarIconView.mAnimationStartColor, statusBarIconView.mIconColor);
                        statusBarIconView.updateIconColor();
                        return;
                    default:
                        StatusBarIconView statusBarIconView2 = this.f$0;
                        statusBarIconView2.mCurrentSetColor = NotificationUtils.interpolateColors(valueAnimator.getAnimatedFraction(), statusBarIconView2.mAnimationStartColor, statusBarIconView2.mIconColor);
                        statusBarIconView2.updateIconColor();
                        return;
                }
            }
        };
        this.mDoubleShadowIconDrawable = null;
        this.mIconRect = new Rect(0, 0, 0, 0);
        this.mApplyShadowEffect = false;
        this.mDozer = new NotificationIconDozeHelper(context);
        this.mBlocked = false;
        this.mAlwaysScaleIcon = true;
        reloadDimens();
        maybeUpdateIconScaleDimens();
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
    }
}
