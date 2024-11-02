package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Icon;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import com.android.app.animation.Interpolators;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.ContrastColorUtil;
import com.android.settingslib.Utils;
import com.android.systemui.R;
import com.android.systemui.statusbar.StatusBarIconView;
import com.android.systemui.statusbar.notification.NotificationUtils;
import com.android.systemui.statusbar.notification.stack.AnimationFilter;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.notification.stack.ViewState;
import com.android.systemui.statusbar.phone.NotificationIconContainer;
import com.samsung.android.nexus.video.VideoPlayer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationIconContainer extends ViewGroup {
    public static final AnonymousClass4 ADD_ICON_PROPERTIES;
    public static final AnonymousClass1 DOT_ANIMATION_PROPERTIES;
    public static final AnonymousClass2 ICON_ANIMATION_PROPERTIES;
    public static final AnonymousClass6 UNISOLATION_PROPERTY;
    public static final AnonymousClass5 UNISOLATION_PROPERTY_OTHERS;
    public static final AnonymousClass3 sTempProperties;
    public final int[] mAbsolutePosition;
    public int mActualLayoutWidth;
    public float mActualPaddingEnd;
    public final float mActualPaddingStart;
    public int mAddAnimationStartIndex;
    public boolean mAnimationsEnabled;
    public int mCannedAnimationStartIndex;
    public boolean mChangingViewPositions;
    public boolean mDisallowNextAnimation;
    public int mDotPadding;
    public boolean mDozing;
    public IconState mFirstVisibleIconState;
    public int mIconSize;
    public final HashMap mIconStates;
    public boolean mInNotificationIconShelf;
    public boolean mIsShowingOverflowDot;
    public boolean mIsStaticLayout;
    public StatusBarIconView mIsolatedIcon;
    public StatusBarIconView mIsolatedIconForAnimation;
    public int mMaxIconsOnAod;
    public int mMaxIconsOnLockscreen;
    public int mMaxStaticIcons;
    public boolean mOnLockScreen;
    public ArrayMap mReplacingIcons;
    public int mShelfIconColor;
    public int mSpeedBumpIndex;
    public int mStaticDotDiameter;
    public int mThemedTextColorPrimary;
    public float mVisualOverflowStart;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.NotificationIconContainer$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends AnimationProperties {
        public final AnimationFilter mAnimationFilter;

        public AnonymousClass2() {
            AnimationFilter animationFilter = new AnimationFilter();
            animationFilter.animateX = true;
            animationFilter.animateY = true;
            animationFilter.animateAlpha = true;
            Property property = View.SCALE_X;
            ArraySet arraySet = animationFilter.mAnimatedProperties;
            arraySet.add(property);
            arraySet.add(View.SCALE_Y);
            this.mAnimationFilter = animationFilter;
        }

        @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
        public final AnimationFilter getAnimationFilter() {
            return this.mAnimationFilter;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.systemui.statusbar.phone.NotificationIconContainer$3, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass3 extends AnimationProperties {
        public final AnimationFilter mAnimationFilter = new AnimationFilter();

        @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
        public final AnimationFilter getAnimationFilter() {
            return this.mAnimationFilter;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class IconState extends ViewState {
        public boolean justReplaced;
        public final View mView;
        public boolean needsCannedAnimation;
        public boolean noAnimations;
        public int visibleState;
        public float iconAppearAmount = 1.0f;
        public float clampedAppearAmount = 1.0f;
        public boolean justAdded = true;
        public int iconColor = 0;
        public final NotificationIconContainer$IconState$$ExternalSyntheticLambda0 mCannedAnimationEndListener = new Consumer() { // from class: com.android.systemui.statusbar.phone.NotificationIconContainer$IconState$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                NotificationIconContainer.IconState iconState = NotificationIconContainer.IconState.this;
                Property property = (Property) obj;
                iconState.getClass();
                if (property == View.TRANSLATION_Y && iconState.iconAppearAmount == 0.0f) {
                    View view = iconState.mView;
                    if (view.getVisibility() == 0) {
                        view.setVisibility(4);
                    }
                }
            }
        };

        /* JADX WARN: Type inference failed for: r1v4, types: [com.android.systemui.statusbar.phone.NotificationIconContainer$IconState$$ExternalSyntheticLambda0] */
        public IconState(View view) {
            this.mView = view;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r14v0, types: [com.android.systemui.statusbar.notification.stack.ViewState, com.android.systemui.statusbar.phone.NotificationIconContainer$IconState] */
        /* JADX WARN: Type inference failed for: r2v19 */
        /* JADX WARN: Type inference failed for: r2v20 */
        /* JADX WARN: Type inference failed for: r2v23, types: [com.android.systemui.statusbar.phone.NotificationIconContainer$3, com.android.systemui.statusbar.notification.stack.AnimationProperties] */
        /* JADX WARN: Type inference failed for: r2v25 */
        /* JADX WARN: Type inference failed for: r2v33 */
        @Override // com.android.systemui.statusbar.notification.stack.ViewState
        public final void applyToView(View view) {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            AnimationProperties animationProperties;
            int i;
            boolean z5;
            AnimationProperties animationProperties2;
            AnimationProperties animationProperties3;
            Interpolator interpolator;
            AnimationProperties animationProperties4;
            if (view instanceof StatusBarIconView) {
                StatusBarIconView statusBarIconView = (StatusBarIconView) view;
                int i2 = this.visibleState;
                boolean z6 = true;
                if ((i2 == 2 && statusBarIconView.mVisibleState == 1) || (i2 == 1 && statusBarIconView.mVisibleState == 2)) {
                    z = true;
                } else {
                    z = false;
                }
                AnonymousClass1 anonymousClass1 = NotificationIconContainer.DOT_ANIMATION_PROPERTIES;
                NotificationIconContainer notificationIconContainer = NotificationIconContainer.this;
                if (!notificationIconContainer.mAnimationsEnabled && statusBarIconView != notificationIconContainer.mIsolatedIcon) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2 && !notificationIconContainer.mDisallowNextAnimation && !this.noAnimations && !z) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3) {
                    if (!this.justAdded && !this.justReplaced) {
                        if (i2 != statusBarIconView.mVisibleState) {
                            animationProperties4 = NotificationIconContainer.DOT_ANIMATION_PROPERTIES;
                            z5 = true;
                            animationProperties2 = animationProperties4;
                        }
                        z5 = false;
                        animationProperties2 = null;
                    } else {
                        super.applyToView(statusBarIconView);
                        if (this.justAdded && this.iconAppearAmount != 0.0f) {
                            statusBarIconView.setAlpha(0.0f);
                            statusBarIconView.setVisibleState(2, false, null, 0L);
                            animationProperties4 = NotificationIconContainer.ADD_ICON_PROPERTIES;
                            z5 = true;
                            animationProperties2 = animationProperties4;
                        }
                        z5 = false;
                        animationProperties2 = null;
                    }
                    if (!z5 && notificationIconContainer.mAddAnimationStartIndex >= 0 && notificationIconContainer.indexOfChild(view) >= notificationIconContainer.mAddAnimationStartIndex && (statusBarIconView.mVisibleState != 2 || this.visibleState != 2)) {
                        animationProperties2 = NotificationIconContainer.DOT_ANIMATION_PROPERTIES;
                        z5 = true;
                    }
                    long j = 100;
                    ?? r2 = animationProperties2;
                    if (this.needsCannedAnimation) {
                        AnonymousClass3 anonymousClass3 = NotificationIconContainer.sTempProperties;
                        AnimationFilter animationFilter = anonymousClass3.mAnimationFilter;
                        animationFilter.reset();
                        AnonymousClass2 anonymousClass2 = NotificationIconContainer.ICON_ANIMATION_PROPERTIES;
                        animationFilter.combineFilter(anonymousClass2.mAnimationFilter);
                        anonymousClass3.mInterpolatorMap = null;
                        android.util.ArrayMap arrayMap = anonymousClass2.mInterpolatorMap;
                        if (arrayMap != null) {
                            anonymousClass3.mInterpolatorMap = new android.util.ArrayMap();
                            anonymousClass3.mInterpolatorMap.putAll(arrayMap);
                        }
                        if (statusBarIconView.mShowsConversation) {
                            interpolator = Interpolators.ICON_OVERSHOT_LESS;
                        } else {
                            interpolator = Interpolators.ICON_OVERSHOT;
                        }
                        anonymousClass3.setCustomInterpolator(View.TRANSLATION_Y, interpolator);
                        anonymousClass3.mAnimationEndAction = this.mCannedAnimationEndListener;
                        if (animationProperties2 != null) {
                            animationFilter.combineFilter(animationProperties2.getAnimationFilter());
                            android.util.ArrayMap arrayMap2 = animationProperties2.mInterpolatorMap;
                            if (arrayMap2 != null) {
                                if (anonymousClass3.mInterpolatorMap == null) {
                                    anonymousClass3.mInterpolatorMap = new android.util.ArrayMap();
                                }
                                anonymousClass3.mInterpolatorMap.putAll(arrayMap2);
                            }
                        }
                        anonymousClass3.duration = 100L;
                        notificationIconContainer.mCannedAnimationStartIndex = notificationIconContainer.indexOfChild(view);
                        r2 = anonymousClass3;
                        z5 = true;
                    }
                    if (!z5 && notificationIconContainer.mCannedAnimationStartIndex >= 0 && notificationIconContainer.indexOfChild(view) > notificationIconContainer.mCannedAnimationStartIndex && (statusBarIconView.mVisibleState != 2 || this.visibleState != 2)) {
                        r2 = NotificationIconContainer.sTempProperties;
                        AnimationFilter animationFilter2 = r2.mAnimationFilter;
                        animationFilter2.reset();
                        animationFilter2.animateX = true;
                        r2.mInterpolatorMap = null;
                        r2.duration = 100L;
                        z5 = true;
                    }
                    StatusBarIconView statusBarIconView2 = notificationIconContainer.mIsolatedIconForAnimation;
                    if (statusBarIconView2 != null) {
                        if (view == statusBarIconView2) {
                            animationProperties3 = NotificationIconContainer.UNISOLATION_PROPERTY;
                            if (notificationIconContainer.mIsolatedIcon == null) {
                                j = 0;
                            }
                            animationProperties3.delay = j;
                        } else {
                            animationProperties3 = NotificationIconContainer.UNISOLATION_PROPERTY_OTHERS;
                            if (notificationIconContainer.mIsolatedIcon != null) {
                                j = 0;
                            }
                            animationProperties3.delay = j;
                        }
                        animationProperties = animationProperties3;
                        z4 = true;
                    } else {
                        animationProperties = r2;
                        z4 = z5;
                    }
                } else {
                    z4 = false;
                    animationProperties = null;
                }
                statusBarIconView.setVisibleState(this.visibleState, z3, null, 0L);
                if (!notificationIconContainer.mInNotificationIconShelf) {
                    if (notificationIconContainer.mIsStaticLayout) {
                        i = statusBarIconView.mDrawableColor;
                    } else {
                        i = this.iconColor;
                    }
                    if (!this.needsCannedAnimation || !z3) {
                        z6 = false;
                    }
                    statusBarIconView.setIconColor(i, z6);
                } else if (NotificationUtils.isGrayscale(statusBarIconView, ContrastColorUtil.getInstance(notificationIconContainer.getContext()))) {
                    int i3 = notificationIconContainer.mShelfIconColor;
                    if (!this.needsCannedAnimation || !z3) {
                        z6 = false;
                    }
                    statusBarIconView.setIconColor(i3, z6);
                }
                if (z4) {
                    animateTo(statusBarIconView, animationProperties);
                } else {
                    super.applyToView(view);
                }
                NotificationIconContainer.sTempProperties.mAnimationEndAction = null;
            }
            this.justAdded = false;
            this.justReplaced = false;
            this.needsCannedAnimation = false;
        }

        @Override // com.android.systemui.statusbar.notification.stack.ViewState
        public final void initFrom(View view) {
            super.initFrom(view);
            if (view instanceof StatusBarIconView) {
                this.iconColor = ((StatusBarIconView) view).mDrawableColor;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.systemui.statusbar.phone.NotificationIconContainer$1, com.android.systemui.statusbar.notification.stack.AnimationProperties] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.statusbar.phone.NotificationIconContainer$4, com.android.systemui.statusbar.notification.stack.AnimationProperties] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.statusbar.phone.NotificationIconContainer$5, com.android.systemui.statusbar.notification.stack.AnimationProperties] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.statusbar.phone.NotificationIconContainer$6, com.android.systemui.statusbar.notification.stack.AnimationProperties] */
    static {
        ?? r0 = new AnimationProperties() { // from class: com.android.systemui.statusbar.phone.NotificationIconContainer.1
            public final AnimationFilter mAnimationFilter;

            {
                AnimationFilter animationFilter = new AnimationFilter();
                animationFilter.animateX = true;
                this.mAnimationFilter = animationFilter;
            }

            @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
            public final AnimationFilter getAnimationFilter() {
                return this.mAnimationFilter;
            }
        };
        r0.duration = 200L;
        DOT_ANIMATION_PROPERTIES = r0;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        anonymousClass2.duration = 100L;
        ICON_ANIMATION_PROPERTIES = anonymousClass2;
        sTempProperties = new AnonymousClass3();
        ?? r02 = new AnimationProperties() { // from class: com.android.systemui.statusbar.phone.NotificationIconContainer.4
            public final AnimationFilter mAnimationFilter;

            {
                AnimationFilter animationFilter = new AnimationFilter();
                animationFilter.animateAlpha = true;
                this.mAnimationFilter = animationFilter;
            }

            @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
            public final AnimationFilter getAnimationFilter() {
                return this.mAnimationFilter;
            }
        };
        r02.duration = 200L;
        r02.delay = 50L;
        ADD_ICON_PROPERTIES = r02;
        ?? r03 = new AnimationProperties() { // from class: com.android.systemui.statusbar.phone.NotificationIconContainer.5
            public final AnimationFilter mAnimationFilter;

            {
                AnimationFilter animationFilter = new AnimationFilter();
                animationFilter.animateAlpha = true;
                this.mAnimationFilter = animationFilter;
            }

            @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
            public final AnimationFilter getAnimationFilter() {
                return this.mAnimationFilter;
            }
        };
        r03.duration = 110L;
        UNISOLATION_PROPERTY_OTHERS = r03;
        ?? r04 = new AnimationProperties() { // from class: com.android.systemui.statusbar.phone.NotificationIconContainer.6
            public final AnimationFilter mAnimationFilter;

            {
                AnimationFilter animationFilter = new AnimationFilter();
                animationFilter.animateX = true;
                this.mAnimationFilter = animationFilter;
            }

            @Override // com.android.systemui.statusbar.notification.stack.AnimationProperties
            public final AnimationFilter getAnimationFilter() {
                return this.mAnimationFilter;
            }
        };
        r04.duration = 110L;
        UNISOLATION_PROPERTY = r04;
    }

    public NotificationIconContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIsStaticLayout = true;
        this.mIconStates = new HashMap();
        this.mActualLayoutWidth = VideoPlayer.MEDIA_ERROR_SYSTEM;
        this.mActualPaddingEnd = -2.14748365E9f;
        this.mActualPaddingStart = -2.14748365E9f;
        this.mAddAnimationStartIndex = -1;
        this.mCannedAnimationStartIndex = -1;
        this.mSpeedBumpIndex = -1;
        this.mAnimationsEnabled = true;
        this.mAbsolutePosition = new int[2];
        initResources();
        setWillNotDraw(true);
    }

    public final void applyIconStates() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            ViewState viewState = (ViewState) this.mIconStates.get(childAt);
            if (viewState != null) {
                viewState.applyToView(childAt);
            }
        }
        this.mAddAnimationStartIndex = -1;
        this.mCannedAnimationStartIndex = -1;
        this.mDisallowNextAnimation = false;
        this.mIsolatedIconForAnimation = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void calculateIconXTranslations() {
        /*
            Method dump skipped, instructions count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.phone.NotificationIconContainer.calculateIconXTranslations():void");
    }

    public final float getActualPaddingStart() {
        float f = this.mActualPaddingStart;
        if (f == -2.14748365E9f) {
            return getPaddingStart();
        }
        return f;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    public void initResources() {
        this.mMaxIconsOnAod = getResources().getInteger(R.integer.max_notif_icons_on_aod);
        this.mMaxIconsOnLockscreen = getResources().getInteger(R.integer.max_notif_icons_on_lockscreen);
        this.mMaxStaticIcons = getResources().getInteger(R.integer.max_notif_static_icons);
        this.mDotPadding = getResources().getDimensionPixelSize(R.dimen.overflow_icon_dot_padding);
        this.mStaticDotDiameter = getResources().getDimensionPixelSize(R.dimen.overflow_dot_radius) * 2;
        this.mThemedTextColorPrimary = Utils.getColorAttr(android.R.attr.textColorPrimary, new ContextThemeWrapper(getContext(), android.R.style.Theme.DeviceDefault.DayNight)).getDefaultColor();
    }

    public boolean isOverflowing(boolean z, float f, float f2, float f3) {
        if (!z) {
            f2 -= f3;
        }
        if (f >= f2) {
            return true;
        }
        return false;
    }

    public final boolean isReplacingIcon(View view) {
        if (this.mReplacingIcons == null || !(view instanceof StatusBarIconView)) {
            return false;
        }
        StatusBarIconView statusBarIconView = (StatusBarIconView) view;
        Icon icon = statusBarIconView.mIcon.icon;
        ArrayList arrayList = (ArrayList) this.mReplacingIcons.get(statusBarIconView.mNotification.getGroupKey());
        if (arrayList == null || !icon.sameAs(((StatusBarIcon) arrayList.get(0)).icon)) {
            return false;
        }
        return true;
    }

    public void onClockColorChanged(int i) {
        this.mShelfIconColor = i;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        initResources();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        new Paint();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float height = getHeight() / 2.0f;
        this.mIconSize = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            int measuredWidth = childAt.getMeasuredWidth();
            int measuredHeight = childAt.getMeasuredHeight();
            int i6 = (int) (height - (measuredHeight / 2.0f));
            childAt.layout(0, i6, measuredWidth, measuredHeight + i6);
            if (i5 == 0) {
                setIconSize(childAt.getWidth());
            }
        }
        getLocationOnScreen(this.mAbsolutePosition);
        if (this.mIsStaticLayout) {
            resetViewStates();
            calculateIconXTranslations();
            applyIconStates();
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int childCount = getChildCount();
        if (this.mOnLockScreen) {
            i3 = this.mMaxIconsOnAod;
        } else if (this.mIsStaticLayout) {
            i3 = this.mMaxStaticIcons;
        } else {
            i3 = childCount;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 0);
        float actualPaddingStart = getActualPaddingStart();
        float f = this.mActualPaddingEnd;
        if (f == -2.14748365E9f) {
            f = getPaddingEnd();
        }
        int i4 = (int) (f + actualPaddingStart);
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            measureChild(childAt, makeMeasureSpec, i2);
            if (i5 <= i3) {
                i4 = childAt.getMeasuredWidth() + i4;
            }
        }
        setMeasuredDimension(ViewGroup.resolveSize(i4, i), View.MeasureSpec.getSize(i2));
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        boolean isReplacingIcon = isReplacingIcon(view);
        if (!this.mChangingViewPositions) {
            IconState iconState = new IconState(view);
            if (isReplacingIcon) {
                iconState.justAdded = false;
                iconState.justReplaced = true;
            }
            this.mIconStates.put(view, iconState);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild < getChildCount() - 1 && !isReplacingIcon && ((IconState) this.mIconStates.get(getChildAt(indexOfChild + 1))).iconAppearAmount > 0.0f) {
            int i = this.mAddAnimationStartIndex;
            if (i < 0) {
                this.mAddAnimationStartIndex = indexOfChild;
            } else {
                this.mAddAnimationStartIndex = Math.min(i, indexOfChild);
            }
        }
        if (view instanceof StatusBarIconView) {
            ((StatusBarIconView) view).setDozing$1(this.mDozing, false);
        }
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        boolean z;
        boolean z2;
        long j;
        super.onViewRemoved(view);
        if (view instanceof StatusBarIconView) {
            boolean isReplacingIcon = isReplacingIcon(view);
            StatusBarIconView statusBarIconView = (StatusBarIconView) view;
            boolean z3 = false;
            if (!this.mAnimationsEnabled && statusBarIconView != this.mIsolatedIcon) {
                z = false;
            } else {
                z = true;
            }
            if (z && statusBarIconView.mVisibleState != 2 && view.getVisibility() == 0 && isReplacingIcon) {
                float translationX = statusBarIconView.getTranslationX();
                int i = 0;
                while (true) {
                    if (i < getChildCount()) {
                        if (getChildAt(i).getTranslationX() > translationX) {
                            break;
                        } else {
                            i++;
                        }
                    } else {
                        i = getChildCount();
                        break;
                    }
                }
                int i2 = this.mAddAnimationStartIndex;
                if (i2 < 0) {
                    this.mAddAnimationStartIndex = i;
                } else {
                    this.mAddAnimationStartIndex = Math.min(i2, i);
                }
            }
            if (!this.mChangingViewPositions) {
                this.mIconStates.remove(view);
                if (!this.mAnimationsEnabled && statusBarIconView != this.mIsolatedIcon) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (z2 && !isReplacingIcon) {
                    addTransientView(statusBarIconView, 0);
                    if (view == this.mIsolatedIcon) {
                        z3 = true;
                    }
                    NotificationIconContainer$$ExternalSyntheticLambda0 notificationIconContainer$$ExternalSyntheticLambda0 = new NotificationIconContainer$$ExternalSyntheticLambda0(this, statusBarIconView);
                    if (z3) {
                        j = 110;
                    } else {
                        j = 0;
                    }
                    statusBarIconView.setVisibleState(2, true, notificationIconContainer$$ExternalSyntheticLambda0, j);
                }
            }
        }
    }

    public final void resetViewStates() {
        float f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            ViewState viewState = (ViewState) this.mIconStates.get(childAt);
            viewState.initFrom(childAt);
            StatusBarIconView statusBarIconView = this.mIsolatedIcon;
            if (statusBarIconView != null && childAt != statusBarIconView) {
                f = 0.0f;
            } else {
                f = 1.0f;
            }
            viewState.setAlpha(f);
            viewState.hidden = false;
            if (childAt instanceof StatusBarIconView) {
                StatusBarIconView statusBarIconView2 = (StatusBarIconView) childAt;
                statusBarIconView2.reloadDimens();
                statusBarIconView2.maybeUpdateIconScaleDimens();
            }
        }
    }

    public final void setAnimationsEnabled(boolean z) {
        if (!z && this.mAnimationsEnabled) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                ViewState viewState = (ViewState) this.mIconStates.get(childAt);
                if (viewState != null) {
                    viewState.cancelAnimations(childAt);
                    viewState.applyToView(childAt);
                }
            }
        }
        this.mAnimationsEnabled = z;
    }

    public void setIconSize(int i) {
        this.mIconSize = i;
    }

    public boolean shouldForceOverflow(int i, int i2, float f, int i3) {
        if ((i2 != -1 && i >= i2 && f > 0.0f) || i >= i3) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final String toString() {
        return "NotificationIconContainer(dozing=" + this.mDozing + " onLockScreen=" + this.mOnLockScreen + " inNotificationIconShelf=" + this.mInNotificationIconShelf + " speedBumpIndex=" + this.mSpeedBumpIndex + " themedTextColorPrimary=#" + Integer.toHexString(this.mThemedTextColorPrimary) + ')';
    }
}
