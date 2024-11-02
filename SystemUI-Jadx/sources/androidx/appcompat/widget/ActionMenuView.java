package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.R$styleable;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.ViewCompat;
import androidx.reflect.os.SeslBuildReflector$SeslVersionReflector;
import com.android.systemui.R;
import com.samsung.android.nexus.video.VideoPlayer;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutCompat implements MenuBuilder.ItemInvoker, MenuView {
    public static final /* synthetic */ int $r8$clinit = 0;
    public int mActionButtonPaddingEnd;
    public int mActionButtonPaddingStart;
    public MenuPresenter.Callback mActionMenuPresenterCallback;
    public boolean mFormatItems;
    public int mFormatItemsWidth;
    public final int mGeneratedItemPadding;
    public final boolean mIsOneUI41;
    public int mLastItemEndPadding;
    public MenuBuilder mMenu;
    public MenuBuilder.Callback mMenuBuilderCallback;
    public final int mMinCellSize;
    public Toolbar.AnonymousClass1 mOnMenuItemClickListener;
    public final String mOverflowBadgeText;
    public int mOverflowButtonMinWidth;
    public int mOverflowButtonPaddingEnd;
    public int mOverflowButtonPaddingStart;
    public Context mPopupContext;
    public int mPopupTheme;
    public ActionMenuPresenter mPresenter;
    public boolean mReserveOverflow;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayoutCompat.LayoutParams {
        public int cellsUsed;
        public boolean expandable;
        public boolean expanded;
        public int extraPixels;
        public boolean isOverflowButton;
        public boolean preventEdgeOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        public LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class MenuBuilderCallback implements MenuBuilder.Callback {
        public MenuBuilderCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            boolean z;
            Toolbar.AnonymousClass1 anonymousClass1 = ActionMenuView.this.mOnMenuItemClickListener;
            if (anonymousClass1 == null) {
                return false;
            }
            Toolbar toolbar = Toolbar.this;
            if (toolbar.mMenuHostHelper.onMenuItemSelected(menuItem)) {
                z = true;
            } else {
                ToolbarActionBar.AnonymousClass2 anonymousClass2 = toolbar.mOnMenuItemClickListener;
                if (anonymousClass2 != null) {
                    z = ToolbarActionBar.this.mWindowCallback.onMenuItemSelected(0, menuItem);
                } else {
                    z = false;
                }
            }
            if (!z) {
                return false;
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public final void onMenuModeChange(MenuBuilder menuBuilder) {
            MenuBuilder.Callback callback = ActionMenuView.this.mMenuBuilderCallback;
            if (callback != null) {
                callback.onMenuModeChange(menuBuilder);
            }
        }
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateLayoutParams(layoutParams);
    }

    public final MenuBuilder getMenu() {
        if (this.mMenu == null) {
            Context context = getContext();
            MenuBuilder menuBuilder = new MenuBuilder(context);
            this.mMenu = menuBuilder;
            menuBuilder.mCallback = new MenuBuilderCallback();
            ActionMenuPresenter actionMenuPresenter = new ActionMenuPresenter(context);
            this.mPresenter = actionMenuPresenter;
            actionMenuPresenter.mReserveOverflow = true;
            actionMenuPresenter.mReserveOverflowSet = true;
            MenuPresenter.Callback callback = this.mActionMenuPresenterCallback;
            if (callback == null) {
                callback = new ActionMenuPresenterCallback();
            }
            actionMenuPresenter.mCallback = callback;
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            ActionMenuPresenter actionMenuPresenter2 = this.mPresenter;
            actionMenuPresenter2.mMenuView = this;
            this.mMenu = actionMenuPresenter2.mMenu;
        }
        return this.mMenu;
    }

    public final boolean hasSupportDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z = false | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        if (i > 0 && (childAt2 instanceof ActionMenuChildView)) {
            return z | ((ActionMenuChildView) childAt2).needsDividerBefore();
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public final void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.ItemInvoker
    public final boolean invokeItem(MenuItemImpl menuItemImpl) {
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder == null) {
            return false;
        }
        return menuBuilder.performItemAction(menuItemImpl, null, 0);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.onConfigurationChanged();
            this.mPresenter.updateMenuView(false);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
        Context context = getContext();
        int[] iArr = R$styleable.View;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, iArr, R.attr.actionButtonStyle, 0);
        this.mActionButtonPaddingStart = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.mActionButtonPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(null, iArr, R.attr.actionOverflowButtonStyle, 0);
        this.mOverflowButtonPaddingStart = obtainStyledAttributes2.getDimensionPixelSize(7, 0);
        this.mOverflowButtonPaddingEnd = obtainStyledAttributes2.getDimensionPixelSize(6, 0);
        this.mOverflowButtonMinWidth = obtainStyledAttributes2.getDimensionPixelSize(3, 0);
        obtainStyledAttributes2.recycle();
        if (this.mIsOneUI41) {
            this.mActionButtonPaddingStart = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.mActionButtonPaddingEnd = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.mOverflowButtonPaddingStart = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_side_padding);
            this.mOverflowButtonPaddingEnd = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_padding_end);
        }
        this.mLastItemEndPadding = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_last_padding);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.mPresenter;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.hideOverflowMenu();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.mActionButtonPopup;
            if (actionButtonSubmenu != null && actionButtonSubmenu.isShowing()) {
                actionButtonSubmenu.mPopup.dismiss();
            }
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int width;
        int i6;
        if (!this.mFormatItems) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i7 = (i4 - i2) / 2;
        int i8 = this.mDividerWidth;
        int i9 = i3 - i;
        int paddingRight = (i9 - getPaddingRight()) - getPaddingLeft();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isOverflowButton) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i12)) {
                        measuredWidth += i8;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (isLayoutRtl) {
                        i6 = getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                        width = i6 + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        i6 = width - measuredWidth;
                    }
                    int i13 = i7 - (measuredHeight / 2);
                    childAt.layout(i6, i13, width, measuredHeight + i13);
                    paddingRight -= measuredWidth;
                    i10 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams).leftMargin) + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    hasSupportDividerBeforeChildAt(i12);
                    i11++;
                }
            }
        }
        if (childCount == 1 && i10 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i14 = (i9 / 2) - (measuredWidth2 / 2);
            int i15 = i7 - (measuredHeight2 / 2);
            childAt2.layout(i14, i15, measuredWidth2 + i14, measuredHeight2 + i15);
            return;
        }
        int i16 = i11 - (i10 ^ 1);
        if (i16 > 0) {
            i5 = paddingRight / i16;
        } else {
            i5 = 0;
        }
        int max = Math.max(0, i5);
        if (isLayoutRtl) {
            int width2 = getWidth() - getPaddingRight();
            for (int i17 = 0; i17 < childCount; i17++) {
                View childAt3 = getChildAt(i17);
                LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !layoutParams2.isOverflowButton) {
                    int i18 = width2 - ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i19 = i7 - (measuredHeight3 / 2);
                    childAt3.layout(i18 - measuredWidth3, i19, i18, measuredHeight3 + i19);
                    width2 = i18 - ((measuredWidth3 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin) + max);
                }
            }
            return;
        }
        int paddingLeft = getPaddingLeft();
        for (int i20 = 0; i20 < childCount; i20++) {
            View childAt4 = getChildAt(i20);
            LayoutParams layoutParams3 = (LayoutParams) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !layoutParams3.isOverflowButton) {
                int i21 = paddingLeft + ((LinearLayout.LayoutParams) layoutParams3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i22 = i7 - (measuredHeight4 / 2);
                childAt4.layout(i21, i22, i21 + measuredWidth4, measuredHeight4 + i22);
                paddingLeft = measuredWidth4 + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + max + i21;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r12v10, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v9 */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public final void onMeasure(int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        int i4;
        int i5;
        boolean z5;
        int i6;
        ?? r12;
        boolean z6;
        int i7;
        int i8;
        int i9;
        int i10;
        ActionMenuItemView actionMenuItemView;
        boolean z7;
        int i11;
        boolean z8;
        MenuBuilder menuBuilder;
        boolean z9 = this.mFormatItems;
        if (View.MeasureSpec.getMode(i) == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        this.mFormatItems = z;
        if (z9 != z) {
            this.mFormatItemsWidth = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.mFormatItems && (menuBuilder = this.mMenu) != null && size != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = size;
            menuBuilder.onItemsChanged(true);
        }
        int childCount = getChildCount();
        if (this.mFormatItems && childCount > 0) {
            int mode = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i);
            int size3 = View.MeasureSpec.getSize(i2);
            int paddingRight = getPaddingRight() + getPaddingLeft();
            int paddingBottom = getPaddingBottom() + getPaddingTop();
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
            int i12 = size2 - paddingRight;
            int i13 = this.mMinCellSize;
            int i14 = i12 / i13;
            int i15 = i12 % i13;
            if (i14 == 0) {
                setMeasuredDimension(i12, 0);
                return;
            }
            int i16 = (i15 / i14) + i13;
            int childCount2 = getChildCount();
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            boolean z10 = false;
            int i21 = 0;
            long j = 0;
            while (i20 < childCount2) {
                View childAt = getChildAt(i20);
                int i22 = size3;
                if (childAt.getVisibility() == 8) {
                    i9 = mode;
                    i8 = i12;
                    i10 = paddingBottom;
                } else {
                    boolean z11 = childAt instanceof ActionMenuItemView;
                    int i23 = i18 + 1;
                    if (z11) {
                        int i24 = this.mGeneratedItemPadding;
                        i6 = i23;
                        r12 = 0;
                        childAt.setPadding(i24, 0, i24, 0);
                    } else {
                        i6 = i23;
                        r12 = 0;
                    }
                    LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                    layoutParams.expanded = r12;
                    layoutParams.extraPixels = r12;
                    layoutParams.cellsUsed = r12;
                    layoutParams.expandable = r12;
                    ((LinearLayout.LayoutParams) layoutParams).leftMargin = r12;
                    ((LinearLayout.LayoutParams) layoutParams).rightMargin = r12;
                    if (z11 && ((ActionMenuItemView) childAt).hasText()) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    layoutParams.preventEdgeOffset = z6;
                    if (layoutParams.isOverflowButton) {
                        i7 = 1;
                    } else {
                        i7 = i14;
                    }
                    i8 = i12;
                    LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                    i9 = mode;
                    i10 = paddingBottom;
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                    if (z11) {
                        actionMenuItemView = (ActionMenuItemView) childAt;
                    } else {
                        actionMenuItemView = null;
                    }
                    if (actionMenuItemView != null && actionMenuItemView.hasText()) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    if (i7 > 0 && (!z7 || i7 >= 2)) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i7 * i16, VideoPlayer.MEDIA_ERROR_SYSTEM), makeMeasureSpec);
                        int measuredWidth = childAt.getMeasuredWidth();
                        i11 = measuredWidth / i16;
                        if (measuredWidth % i16 != 0) {
                            i11++;
                        }
                        if (z7 && i11 < 2) {
                            i11 = 2;
                        }
                    } else {
                        i11 = 0;
                    }
                    if (!layoutParams2.isOverflowButton && z7) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    layoutParams2.expandable = z8;
                    layoutParams2.cellsUsed = i11;
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i16 * i11, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), makeMeasureSpec);
                    i19 = Math.max(i19, i11);
                    if (layoutParams.expandable) {
                        i21++;
                    }
                    if (layoutParams.isOverflowButton) {
                        z10 = true;
                    }
                    i14 -= i11;
                    i17 = Math.max(i17, childAt.getMeasuredHeight());
                    if (i11 == 1) {
                        j |= 1 << i20;
                    }
                    i18 = i6;
                }
                i20++;
                size3 = i22;
                paddingBottom = i10;
                i12 = i8;
                mode = i9;
            }
            int i25 = mode;
            int i26 = i12;
            int i27 = size3;
            if (z10 && i18 == 2) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z12 = false;
            while (i21 > 0 && i14 > 0) {
                int i28 = Integer.MAX_VALUE;
                int i29 = 0;
                long j2 = 0;
                for (int i30 = 0; i30 < childCount2; i30++) {
                    LayoutParams layoutParams3 = (LayoutParams) getChildAt(i30).getLayoutParams();
                    if (layoutParams3.expandable) {
                        int i31 = layoutParams3.cellsUsed;
                        if (i31 < i28) {
                            j2 = 1 << i30;
                            i29 = 1;
                            i28 = i31;
                        } else if (i31 == i28) {
                            i29++;
                            j2 |= 1 << i30;
                        }
                    }
                }
                j |= j2;
                if (i29 > i14) {
                    break;
                }
                int i32 = i28 + 1;
                int i33 = 0;
                while (i33 < childCount2) {
                    View childAt2 = getChildAt(i33);
                    LayoutParams layoutParams4 = (LayoutParams) childAt2.getLayoutParams();
                    int i34 = childMeasureSpec;
                    int i35 = childCount2;
                    long j3 = 1 << i33;
                    if ((j2 & j3) == 0) {
                        if (layoutParams4.cellsUsed == i32) {
                            j |= j3;
                        }
                    } else {
                        if (z3 && layoutParams4.preventEdgeOffset && i14 == 1) {
                            int i36 = this.mGeneratedItemPadding;
                            childAt2.setPadding(i36 + i16, 0, i36, 0);
                        }
                        layoutParams4.cellsUsed++;
                        layoutParams4.expanded = true;
                        i14--;
                    }
                    i33++;
                    childMeasureSpec = i34;
                    childCount2 = i35;
                }
                z12 = true;
            }
            int i37 = childMeasureSpec;
            int i38 = childCount2;
            if (!z10 && i18 == 1) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (i14 > 0 && j != 0 && (i14 < i18 - 1 || z4 || i19 > 1)) {
                float bitCount = Long.bitCount(j);
                if (!z4) {
                    if ((j & 1) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset) {
                        bitCount -= 0.5f;
                    }
                    int i39 = i38 - 1;
                    if ((j & (1 << i39)) != 0 && !((LayoutParams) getChildAt(i39).getLayoutParams()).preventEdgeOffset) {
                        bitCount -= 0.5f;
                    }
                }
                if (bitCount > 0.0f) {
                    i5 = (int) ((i14 * i16) / bitCount);
                } else {
                    i5 = 0;
                }
                i3 = i38;
                for (int i40 = 0; i40 < i3; i40++) {
                    if ((j & (1 << i40)) != 0) {
                        View childAt3 = getChildAt(i40);
                        LayoutParams layoutParams5 = (LayoutParams) childAt3.getLayoutParams();
                        if (childAt3 instanceof ActionMenuItemView) {
                            layoutParams5.extraPixels = i5;
                            layoutParams5.expanded = true;
                            if (i40 == 0 && !layoutParams5.preventEdgeOffset) {
                                ((LinearLayout.LayoutParams) layoutParams5).leftMargin = (-i5) / 2;
                            }
                            z5 = true;
                        } else if (layoutParams5.isOverflowButton) {
                            layoutParams5.extraPixels = i5;
                            z5 = true;
                            layoutParams5.expanded = true;
                            ((LinearLayout.LayoutParams) layoutParams5).rightMargin = (-i5) / 2;
                        } else {
                            if (i40 != 0) {
                                ((LinearLayout.LayoutParams) layoutParams5).leftMargin = i5 / 2;
                            }
                            if (i40 != i3 - 1) {
                                ((LinearLayout.LayoutParams) layoutParams5).rightMargin = i5 / 2;
                            }
                        }
                        z12 = z5;
                    }
                }
            } else {
                i3 = i38;
            }
            if (z12) {
                for (int i41 = 0; i41 < i3; i41++) {
                    View childAt4 = getChildAt(i41);
                    LayoutParams layoutParams6 = (LayoutParams) childAt4.getLayoutParams();
                    if (layoutParams6.expanded) {
                        childAt4.measure(View.MeasureSpec.makeMeasureSpec((layoutParams6.cellsUsed * i16) + layoutParams6.extraPixels, VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS), i37);
                    }
                }
            }
            if (i25 != 1073741824) {
                i4 = i17;
            } else {
                i4 = i27;
            }
            setMeasuredDimension(i26, i4);
            return;
        }
        for (int i42 = 0; i42 < childCount; i42++) {
            View childAt5 = getChildAt(i42);
            LayoutParams layoutParams7 = (LayoutParams) childAt5.getLayoutParams();
            ((LinearLayout.LayoutParams) layoutParams7).rightMargin = 0;
            ((LinearLayout.LayoutParams) layoutParams7).leftMargin = 0;
            if (childAt5 instanceof ActionMenuItemView) {
                int i43 = this.mActionButtonPaddingStart;
                int i44 = this.mActionButtonPaddingEnd;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ViewCompat.Api17Impl.setPaddingRelative(childAt5, i43, 0, i44, 0);
                int i45 = childCount - 1;
                if (i42 == i45) {
                    ActionMenuItemView actionMenuItemView2 = (ActionMenuItemView) childAt5;
                    if (actionMenuItemView2.hasText()) {
                        if (ViewCompat.Api17Impl.getLayoutDirection(this) == 0) {
                            ((LinearLayout.LayoutParams) layoutParams7).rightMargin = this.mLastItemEndPadding;
                            childAt5.setLayoutParams(layoutParams7);
                        } else {
                            ((LinearLayout.LayoutParams) layoutParams7).leftMargin = this.mLastItemEndPadding;
                            childAt5.setLayoutParams(layoutParams7);
                        }
                        z2 = false;
                    } else if (this.mIsOneUI41) {
                        childAt5.setLayoutParams(layoutParams7);
                        z2 = false;
                        ViewCompat.Api17Impl.setPaddingRelative(childAt5, this.mActionButtonPaddingStart, 0, this.mOverflowButtonPaddingEnd, 0);
                    } else {
                        z2 = false;
                        actionMenuItemView2.setMinWidth(this.mOverflowButtonMinWidth);
                        childAt5.setLayoutParams(layoutParams7);
                        ViewCompat.Api17Impl.setPaddingRelative(childAt5, this.mOverflowButtonPaddingStart, 0, this.mOverflowButtonPaddingEnd, 0);
                    }
                } else if (i42 < i45) {
                    ((ActionMenuItemView) childAt5).hasText();
                }
            } else if (layoutParams7.isOverflowButton) {
                if (childAt5 instanceof ActionMenuPresenter.OverflowMenuButton) {
                    ViewGroup viewGroup = (ViewGroup) childAt5;
                    viewGroup.getChildAt(0).setPaddingRelative(this.mOverflowButtonPaddingStart, 0, this.mOverflowButtonPaddingEnd, 0);
                    viewGroup.getChildAt(0).setMinimumWidth(this.mOverflowButtonMinWidth);
                } else {
                    int i46 = this.mOverflowButtonPaddingStart;
                    int i47 = this.mOverflowButtonPaddingEnd;
                    WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api17Impl.setPaddingRelative(childAt5, i46, 0, i47, 0);
                    childAt5.setMinimumWidth(this.mOverflowButtonMinWidth);
                }
            }
        }
        super.onMeasure(i, i2);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mBaselineAligned = false;
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (f * 4.0f);
        this.mPopupContext = context;
        this.mPopupTheme = 0;
        boolean z = SeslBuildReflector$SeslVersionReflector.getField_SEM_PLATFORM_INT() >= 130100;
        this.mIsOneUI41 = z;
        int[] iArr = R$styleable.View;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.actionButtonStyle, 0);
        this.mActionButtonPaddingStart = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.mActionButtonPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, R.attr.actionOverflowButtonStyle, 0);
        this.mOverflowButtonPaddingStart = obtainStyledAttributes2.getDimensionPixelSize(7, 0);
        this.mOverflowButtonPaddingEnd = obtainStyledAttributes2.getDimensionPixelSize(6, 0);
        this.mOverflowButtonMinWidth = obtainStyledAttributes2.getDimensionPixelSize(3, 0);
        obtainStyledAttributes2.recycle();
        this.mOverflowBadgeText = context.getResources().getString(R.string.sesl_action_menu_overflow_badge_text_n);
        if (z) {
            this.mActionButtonPaddingStart = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.mActionButtonPaddingEnd = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.mOverflowButtonPaddingStart = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_side_padding);
            this.mOverflowButtonPaddingEnd = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_padding_end);
        }
        this.mLastItemEndPadding = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_last_padding);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayoutCompat.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateLayoutParams(layoutParams);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final LinearLayoutCompat.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
        return layoutParams;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup
    public final LinearLayoutCompat.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2;
        if (layoutParams != null) {
            if (layoutParams instanceof LayoutParams) {
                layoutParams2 = new LayoutParams((LayoutParams) layoutParams);
            } else {
                layoutParams2 = new LayoutParams(layoutParams);
            }
            if (((LinearLayout.LayoutParams) layoutParams2).gravity <= 0) {
                ((LinearLayout.LayoutParams) layoutParams2).gravity = 16;
            }
            return layoutParams2;
        }
        LayoutParams layoutParams3 = new LayoutParams(-2, -2);
        ((LinearLayout.LayoutParams) layoutParams3).gravity = 16;
        return layoutParams3;
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }
    }
}
