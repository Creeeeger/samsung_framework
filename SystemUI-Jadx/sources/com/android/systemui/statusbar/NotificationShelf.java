package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.MathUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import com.android.internal.policy.SystemBarUtils;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.logging.PanelScreenShotLogger;
import com.android.systemui.plugins.statusbar.StatusBarStateController;
import com.android.systemui.statusbar.notification.SourceType;
import com.android.systemui.statusbar.notification.SourceType$Companion$from$1;
import com.android.systemui.statusbar.notification.row.ActivatableNotificationView;
import com.android.systemui.statusbar.notification.row.ExpandableView;
import com.android.systemui.statusbar.notification.row.NotificationBackgroundView;
import com.android.systemui.statusbar.notification.stack.AmbientState;
import com.android.systemui.statusbar.notification.stack.AnimationProperties;
import com.android.systemui.statusbar.notification.stack.ExpandableViewState;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;
import com.android.systemui.statusbar.phone.NotificationIconContainer;
import com.android.systemui.statusbar.phone.SecShelfNotificationIconContainer;
import com.android.systemui.util.DumpUtilsKt;
import java.io.PrintWriter;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class NotificationShelf extends ActivatableNotificationView implements StatusBarStateController.StateListener, PanelScreenShotLogger.LogProvider {
    public float mActualWidth;
    public AmbientState mAmbientState;
    public boolean mAnimationsEnabled;
    public boolean mCanInteract;
    public boolean mCanModifyColorOfNotifications;
    public final Rect mClipRect;
    public NotificationShelfController mController;
    public float mCornerAnimationDistance;
    public boolean mEnableNotificationClipping;
    public boolean mHasItemsInStableShelf;
    public boolean mHideBackground;
    public NotificationStackScrollLayoutController mHostLayoutController;
    public int mIndexOfFirstViewInShelf;
    public boolean mInteractive;
    public int mNotGoneIndex;
    public int mScrollFastThreshold;
    public boolean mSensitiveRevealAnimEndabled;
    public SecShelfNotificationIconContainer mShelfIcons;
    public NotificationShelfManager mShelfManager;
    public boolean mShelfRefactorFlagEnabled;
    public boolean mShowNotificationShelf;
    public int mStatusBarState;
    public static final Interpolator ICON_ALPHA_INTERPOLATOR = new PathInterpolator(0.6f, 0.0f, 0.6f, 0.0f);
    public static final SourceType$Companion$from$1 BASE_VALUE = SourceType.from("BaseValue");
    public static final SourceType$Companion$from$1 SHELF_SCROLL = SourceType.from("ShelfScroll");

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class ShelfState extends ExpandableViewState {
        public ExpandableView firstViewInShelf;
        public boolean hasItemsInStableShelf;

        public ShelfState() {
        }

        @Override // com.android.systemui.statusbar.notification.stack.ExpandableViewState, com.android.systemui.statusbar.notification.stack.ViewState
        public final void animateTo(View view, AnimationProperties animationProperties) {
            NotificationShelf notificationShelf = NotificationShelf.this;
            if (!notificationShelf.mShowNotificationShelf) {
                return;
            }
            super.animateTo(view, animationProperties);
            ExpandableView expandableView = this.firstViewInShelf;
            if (!notificationShelf.mShelfRefactorFlagEnabled) {
                notificationShelf.mIndexOfFirstViewInShelf = notificationShelf.mHostLayoutController.mView.indexOfChild(expandableView);
                notificationShelf.updateAppearance();
                boolean z = this.hasItemsInStableShelf;
                if (notificationShelf.mHasItemsInStableShelf != z) {
                    notificationShelf.mHasItemsInStableShelf = z;
                    notificationShelf.updateInteractiveness();
                }
                notificationShelf.mShelfIcons.setAnimationsEnabled(notificationShelf.mAnimationsEnabled);
                return;
            }
            throw null;
        }

        @Override // com.android.systemui.statusbar.notification.stack.ExpandableViewState, com.android.systemui.statusbar.notification.stack.ViewState
        public final void applyToView(View view) {
            NotificationShelf notificationShelf = NotificationShelf.this;
            if (!notificationShelf.mShowNotificationShelf) {
                return;
            }
            super.applyToView(view);
            ExpandableView expandableView = this.firstViewInShelf;
            if (!notificationShelf.mShelfRefactorFlagEnabled) {
                notificationShelf.mIndexOfFirstViewInShelf = notificationShelf.mHostLayoutController.mView.indexOfChild(expandableView);
                notificationShelf.updateAppearance();
                boolean z = this.hasItemsInStableShelf;
                if (notificationShelf.mHasItemsInStableShelf != z) {
                    notificationShelf.mHasItemsInStableShelf = z;
                    notificationShelf.updateInteractiveness();
                }
                notificationShelf.mShelfIcons.setAnimationsEnabled(notificationShelf.mAnimationsEnabled);
                return;
            }
            throw null;
        }
    }

    public NotificationShelf(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAnimationsEnabled = true;
        this.mClipRect = new Rect();
        this.mIndexOfFirstViewInShelf = -1;
        this.mActualWidth = -1.0f;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final ExpandableViewState createExpandableViewState() {
        return new ShelfState();
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableOutlineView, com.android.systemui.statusbar.notification.row.ExpandableView, com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
        super.dump(DumpUtilsKt.asIndenting(printWriter), strArr);
    }

    @Override // com.android.systemui.logging.PanelScreenShotLogger.LogProvider
    public final ArrayList gatherState() {
        NotificationIconContainer.IconState iconState;
        ArrayList arrayList = new ArrayList();
        PanelScreenShotLogger.INSTANCE.getClass();
        PanelScreenShotLogger.addHeaderLine("NotificationShelf", arrayList);
        ShelfState shelfState = (ShelfState) this.mViewState;
        if (shelfState != null) {
            PanelScreenShotLogger.addLogItem(arrayList, "hasItemsInStableShelf", Boolean.valueOf(shelfState.hasItemsInStableShelf));
        }
        PanelScreenShotLogger.addHeaderLine("NotificationShelfIcon", arrayList);
        for (int i = 0; i < this.mHostLayoutController.mView.getChildCount(); i++) {
            StatusBarIconView shelfIcon = ((ExpandableView) this.mHostLayoutController.mView.getChildAt(i)).getShelfIcon();
            SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mShelfIcons;
            if (secShelfNotificationIconContainer == null) {
                iconState = null;
            } else {
                iconState = (NotificationIconContainer.IconState) secShelfNotificationIconContainer.mIconStates.get(shelfIcon);
            }
            if (iconState != null) {
                String.format("    iconAppearAmount:%s | clampedAppearAmount:%s | visibleState:%s | justAdded:%s | needsCannedAnimation:%s | iconColor:%s | noAnimations:%s", Float.valueOf(iconState.iconAppearAmount), Float.valueOf(iconState.clampedAppearAmount), Integer.valueOf(iconState.visibleState), Boolean.valueOf(iconState.justAdded), Boolean.valueOf(iconState.needsCannedAnimation), Integer.valueOf(iconState.iconColor), Boolean.valueOf(iconState.noAnimations));
                PanelScreenShotLogger panelScreenShotLogger = PanelScreenShotLogger.INSTANCE;
                Float valueOf = Float.valueOf(iconState.iconAppearAmount);
                panelScreenShotLogger.getClass();
                PanelScreenShotLogger.addLogItem(arrayList, "iconAppearAmount", valueOf);
                PanelScreenShotLogger.addLogItem(arrayList, "clampedAppearAmount", Float.valueOf(iconState.clampedAppearAmount));
                PanelScreenShotLogger.addLogItem(arrayList, "visibleState", Integer.valueOf(iconState.visibleState));
                PanelScreenShotLogger.addLogItem(arrayList, "justAdded", Boolean.valueOf(iconState.justAdded));
                PanelScreenShotLogger.addLogItem(arrayList, "needsCannedAnimation", Boolean.valueOf(iconState.needsCannedAnimation));
                PanelScreenShotLogger.addLogItem(arrayList, "iconColor", Integer.valueOf(iconState.iconColor));
                PanelScreenShotLogger.addLogItem(arrayList, "noAnimations", Boolean.valueOf(iconState.noAnimations));
                PanelScreenShotLogger.addLogItem(arrayList, "method", Integer.valueOf(this.mNotGoneIndex));
                arrayList.add("\n");
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0129, code lost:
    
        if (r12 == false) goto L75;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float getAmountInShelf(int r15, com.android.systemui.statusbar.notification.row.ExpandableView r16, boolean r17, boolean r18, boolean r19, float r20) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NotificationShelf.getAmountInShelf(int, com.android.systemui.statusbar.notification.row.ExpandableView, boolean, boolean, boolean, float):float");
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final void getBoundsOnScreen(Rect rect, boolean z) {
        int width;
        super.getBoundsOnScreen(rect, z);
        float f = this.mActualWidth;
        if (f > -1.0f) {
            width = (int) f;
        } else {
            width = getWidth();
        }
        if (isLayoutRtl()) {
            rect.left = rect.right - width;
        } else {
            rect.right = rect.left + width;
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final View getContentView() {
        return this.mShelfIcons;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean hasNoContentHeight() {
        boolean z;
        if (this.mShelfManager.statusBarState != 1) {
            z = true;
        } else {
            z = false;
        }
        return !z;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView
    public final boolean hideBackground() {
        if (!this.mHideBackground) {
            return false;
        }
        return true;
    }

    public boolean isXInView(float f, float f2, float f3, float f4) {
        if (f3 - f2 <= f && f < f4 + f2) {
            return true;
        }
        return false;
    }

    public boolean isYInView(float f, float f2, float f3, float f4) {
        if (f3 - f2 <= f && f < f4 + f2) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableOutlineView
    public final boolean needsOutline() {
        if (!this.mHideBackground && super.needsOutline()) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateResources();
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        SecShelfNotificationIconContainer secShelfNotificationIconContainer = (SecShelfNotificationIconContainer) findViewById(R.id.content);
        this.mShelfIcons = secShelfNotificationIconContainer;
        secShelfNotificationIconContainer.setClipChildren(false);
        this.mShelfIcons.setClipToPadding(false);
        this.mClipToActualHeight = false;
        updateClipping();
        setClipChildren(false);
        setClipToPadding(false);
        this.mShelfIcons.mIsStaticLayout = false;
        requestRoundness(1.0f, 1.0f, BASE_VALUE, false);
        updateResources();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (this.mInteractive) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_EXPAND);
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(16, getContext().getString(R.string.accessibility_overflow_action)));
        }
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = getResources().getDisplayMetrics().heightPixels;
        this.mClipRect.set(0, -i5, getWidth(), i5);
        SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mShelfIcons;
        if (secShelfNotificationIconContainer != null) {
            secShelfNotificationIconContainer.setClipBounds(this.mClipRect);
        }
    }

    @Override // com.android.systemui.plugins.statusbar.StatusBarStateController.StateListener
    public final void onStateChanged(int i) {
        if (!this.mShelfRefactorFlagEnabled) {
            this.mStatusBarState = i;
            NotificationShelfManager notificationShelfManager = this.mShelfManager;
            notificationShelfManager.statusBarState = i;
            notificationShelfManager.updateShelfHeight();
            updateInteractiveness();
            updateIconsPaddingEnd();
            this.mShelfManager.updateShelfTextAreaVisibility();
            return;
        }
        NotificationShelfController.Companion.getClass();
        throw new IllegalStateException("Code path not supported when Flags.NOTIFICATION_SHELF_REFACTOR is ".concat("enabled").toString());
    }

    @Override // com.android.systemui.statusbar.notification.row.ExpandableView
    public final boolean pointInView(float f, float f2, float f3) {
        int width;
        float f4;
        float width2 = getWidth();
        float f5 = this.mActualWidth;
        if (f5 > -1.0f) {
            width = (int) f5;
        } else {
            width = getWidth();
        }
        float f6 = width;
        if (isLayoutRtl()) {
            f4 = width2 - f6;
        } else {
            f4 = 0.0f;
        }
        if (!isLayoutRtl()) {
            width2 = f6;
        }
        float f7 = this.mClipTopAmount;
        float f8 = this.mActualHeight;
        if (isXInView(f, f3, f4, width2) && isYInView(f2, f3, f7, f8)) {
            return true;
        }
        return false;
    }

    @Override // com.android.systemui.statusbar.notification.row.ActivatableNotificationView, com.android.systemui.statusbar.notification.row.ExpandableView
    public final void setFakeShadowIntensity(int i, float f, float f2, int i2) {
        if (!this.mHasItemsInStableShelf) {
            f = 0.0f;
        }
        super.setFakeShadowIntensity(i, f, f2, i2);
    }

    @Override // android.view.View
    public final String toString() {
        return "NotificationShelf(hideBackground=" + this.mHideBackground + " notGoneIndex=" + this.mNotGoneIndex + " hasItemsInStableShelf=" + this.mHasItemsInStableShelf + " statusBarState=" + this.mStatusBarState + " interactive=" + this.mInteractive + " animationsEnabled=" + this.mAnimationsEnabled + " showNotificationShelf=" + this.mShowNotificationShelf + " indexOfFirstViewInShelf=" + this.mIndexOfFirstViewInShelf + ')';
    }

    public void updateActualWidth(float f, float f2) {
        float width;
        if (this.mAmbientState.isOnKeyguard()) {
            width = MathUtils.lerp(f2, getWidth(), f);
        } else {
            width = getWidth();
        }
        int i = (int) width;
        NotificationBackgroundView notificationBackgroundView = this.mBackgroundNormal;
        if (notificationBackgroundView != null) {
            notificationBackgroundView.mActualWidth = i;
        }
        SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mShelfIcons;
        if (secShelfNotificationIconContainer != null) {
            secShelfNotificationIconContainer.mActualLayoutWidth = i;
        }
        this.mActualWidth = width;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0146, code lost:
    
        if (r17 != false) goto L86;
     */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateAppearance() {
        /*
            Method dump skipped, instructions count: 1110
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.NotificationShelf.updateAppearance():void");
    }

    public final void updateIconsPaddingEnd() {
        if (this.mStatusBarState == 1) {
            this.mShelfIcons.mActualPaddingEnd = r2.getPaddingEnd();
            return;
        }
        NotificationShelfManager notificationShelfManager = this.mShelfManager;
        if (notificationShelfManager != null) {
            SecShelfNotificationIconContainer secShelfNotificationIconContainer = this.mShelfIcons;
            Intrinsics.checkNotNull(notificationShelfManager.mShelfTextArea);
            secShelfNotificationIconContainer.mActualPaddingEnd = r1.getWidth() + notificationShelfManager.mIconContainerPaddingEnd;
        }
    }

    public final void updateInteractiveness() {
        boolean z;
        boolean z2 = false;
        if (this.mShelfRefactorFlagEnabled) {
            z = this.mCanInteract;
        } else if (this.mStatusBarState == 1) {
            z = true;
        } else {
            z = false;
        }
        if (z && this.mHasItemsInStableShelf) {
            z2 = true;
        }
        this.mInteractive = z2;
        if (!this.mAmbientState.isOnKeyguard()) {
            this.mInteractive = true;
        }
        setClickable(this.mInteractive);
        setFocusable(this.mInteractive);
        setImportantForAccessibility(1);
    }

    public final int updateNotificationClipHeight(ExpandableView expandableView, float f, int i) {
        boolean z;
        int i2;
        float translationY = expandableView.getTranslationY() + expandableView.mActualHeight;
        boolean z2 = true;
        if ((expandableView.isPinned() || expandableView.isHeadsUpAnimatingAway()) && !this.mAmbientState.isDozingAndNotPulsing(expandableView)) {
            z = true;
        } else {
            z = false;
        }
        if (this.mAmbientState.isPulseExpanding()) {
            if (i != 0) {
                z2 = false;
            }
        } else {
            z2 = expandableView.showingPulsing();
        }
        if (!z || this.mAmbientState.mShadeExpanded) {
            if (translationY > f && !z2) {
                if (this.mEnableNotificationClipping) {
                    i2 = (int) (translationY - f);
                } else {
                    i2 = 0;
                }
                expandableView.setClipBottomAmount(i2);
            } else {
                expandableView.setClipBottomAmount(0);
            }
        }
        if (!z2) {
            return 0;
        }
        return (int) (translationY - getTranslationY());
    }

    public final void updateResources() {
        int i;
        Resources resources = getResources();
        SystemBarUtils.getStatusBarHeight(((FrameLayout) this).mContext);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        NotificationShelfManager notificationShelfManager = this.mShelfManager;
        if (notificationShelfManager != null) {
            if (notificationShelfManager.statusBarState != 1) {
                if (QpRune.QUICK_TABLET) {
                    i = R.dimen.sec_notification_shelf_height_tablet;
                } else {
                    i = R.dimen.sec_notification_shelf_height;
                }
            } else {
                i = R.dimen.notification_shelf_height_for_lockscreen;
            }
        } else {
            i = R.dimen.notification_shelf_height;
        }
        int dimensionPixelOffset = resources.getDimensionPixelOffset(i);
        if (dimensionPixelOffset != layoutParams.height) {
            layoutParams.height = dimensionPixelOffset;
            setLayoutParams(layoutParams);
        }
        this.mScrollFastThreshold = resources.getDimensionPixelOffset(R.dimen.scroll_fast_threshold);
        this.mShowNotificationShelf = resources.getBoolean(R.bool.config_showNotificationShelf);
        this.mCornerAnimationDistance = resources.getDimensionPixelSize(R.dimen.notification_corner_animation_distance);
        this.mEnableNotificationClipping = resources.getBoolean(R.bool.notification_enable_clipping);
        this.mShelfIcons.mInNotificationIconShelf = true;
        if (!this.mShowNotificationShelf) {
            setVisibility(8);
        }
        NotificationShelfManager notificationShelfManager2 = this.mShelfManager;
        if (notificationShelfManager2 != null) {
            notificationShelfManager2.mIconContainerPaddingEnd = notificationShelfManager2.context.getResources().getDimensionPixelSize(R.dimen.notification_shelf_icon_container_padding_end);
        }
        updateIconsPaddingEnd();
    }

    public NotificationShelf(Context context, AttributeSet attributeSet, boolean z) {
        super(context, attributeSet);
        this.mAnimationsEnabled = true;
        this.mClipRect = new Rect();
        this.mIndexOfFirstViewInShelf = -1;
        this.mActualWidth = -1.0f;
        this.mShowNotificationShelf = z;
        PanelScreenShotLogger.INSTANCE.addLogProvider("NotificationShelf", this);
    }
}
