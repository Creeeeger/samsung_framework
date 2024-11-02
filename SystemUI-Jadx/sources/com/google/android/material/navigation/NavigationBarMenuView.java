package com.google.android.material.navigation;

import android.R;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.util.SeslMisc;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SeslMenuItem;
import androidx.appcompat.widget.TooltipPopup$$ExternalSyntheticOutline0;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.ViewCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.TextScale;
import com.google.android.material.navigation.NavigationBarPresenter;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.HashSet;
import java.util.WeakHashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int[] DISABLED_STATE_SET = {-16842910};
    public final SparseArray badgeDrawables;
    public NavigationBarItemView[] buttons;
    public ColorStateList itemActiveIndicatorColor;
    public ShapeAppearanceModel itemActiveIndicatorShapeAppearance;
    public int itemBackgroundRes;
    public int itemIconSize;
    public ColorStateList itemIconTint;
    public final Pools$SynchronizedPool itemPool;
    public int itemTextAppearanceActive;
    public int itemTextAppearanceInactive;
    public final ColorStateList itemTextColorDefault;
    public ColorStateList itemTextColorFromUser;
    public int labelVisibilityMode;
    public final ContentResolver mContentResolver;
    public MenuBuilder mDummyMenu;
    public boolean mHasOverflowMenu;
    public InternalBtnInfo mInvisibleBtns;
    public int mMaxItemCount;
    public NavigationBarItemView mOverflowButton;
    public MenuBuilder mOverflowMenu;
    public ColorDrawable mSBBTextColorDrawable;
    public MenuBuilder.Callback mSelectedCallback;
    public int mSeslLabelTextAppearance;
    public boolean mUseItemPool;
    public int mViewType;
    public int mViewVisibleItemCount;
    public InternalBtnInfo mVisibleBtns;
    public int mVisibleItemCount;
    public MenuBuilder menu;
    public final AnonymousClass1 onClickListener;
    public NavigationBarPresenter presenter;
    public int selectedItemId;
    public int selectedItemPosition;
    public final AutoTransition set;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class InternalBtnInfo {
        public int cnt = 0;
        public final int[] originPos;

        public InternalBtnInfo(int i) {
            this.originPos = new int[i];
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.material.navigation.NavigationBarMenuView$1] */
    public NavigationBarMenuView(Context context) {
        super(context);
        this.itemPool = new Pools$SynchronizedPool(5);
        new SparseArray(5);
        this.selectedItemId = 0;
        this.selectedItemPosition = 0;
        this.badgeDrawables = new SparseArray(5);
        this.mViewType = 1;
        this.mVisibleBtns = null;
        this.mInvisibleBtns = null;
        this.mOverflowButton = null;
        this.mHasOverflowMenu = false;
        this.mOverflowMenu = null;
        this.mVisibleItemCount = 0;
        this.mViewVisibleItemCount = 0;
        this.mMaxItemCount = 0;
        this.mUseItemPool = true;
        this.itemTextColorDefault = createDefaultColorStateList();
        if (isInEditMode()) {
            this.set = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.set = autoTransition;
            autoTransition.setOrdering(0);
            autoTransition.setDuration(0L);
            autoTransition.addTransition(new TextScale());
        }
        this.onClickListener = new View.OnClickListener() { // from class: com.google.android.material.navigation.NavigationBarMenuView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MenuItemImpl menuItemImpl = ((NavigationBarItemView) view).itemData;
                NavigationBarMenuView navigationBarMenuView = NavigationBarMenuView.this;
                if (!navigationBarMenuView.menu.performItemAction(menuItemImpl, navigationBarMenuView.presenter, 0)) {
                    menuItemImpl.setChecked(true);
                }
            }
        };
        this.mContentResolver = context.getContentResolver();
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api16Impl.setImportantForAccessibility(this, 1);
    }

    /* JADX WARN: Type inference failed for: r0v74 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [int, boolean] */
    public final void buildMenuView() {
        boolean z;
        ?? r0;
        boolean z2;
        int i;
        int color;
        MenuItemImpl menuItemImpl;
        MenuBuilder menuBuilder;
        int i2;
        int i3;
        boolean z3;
        BadgeDrawable badgeDrawable;
        boolean z4;
        removeAllViews();
        TransitionManager.beginDelayedTransition(this.set, this);
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null && this.mUseItemPool) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    seslRemoveBadge(navigationBarItemView.getId());
                    this.itemPool.release(navigationBarItemView);
                    ImageView imageView = navigationBarItemView.icon;
                    if (navigationBarItemView.badgeDrawable != null) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z4) {
                        if (imageView != null) {
                            navigationBarItemView.setClipChildren(true);
                            navigationBarItemView.setClipToPadding(true);
                            BadgeDrawable badgeDrawable2 = navigationBarItemView.badgeDrawable;
                            if (badgeDrawable2 != null) {
                                if (badgeDrawable2.getCustomBadgeParent() != null) {
                                    badgeDrawable2.getCustomBadgeParent().setForeground(null);
                                } else {
                                    imageView.getOverlay().remove(badgeDrawable2);
                                }
                            }
                        }
                        navigationBarItemView.badgeDrawable = null;
                    }
                    navigationBarItemView.itemData = null;
                    navigationBarItemView.activeIndicatorProgress = 0.0f;
                    navigationBarItemView.initialized = false;
                }
            }
        }
        if (this.mOverflowButton != null) {
            seslRemoveBadge(com.android.systemui.R.id.bottom_overflow);
        }
        int size = this.menu.size();
        if (size == 0) {
            this.selectedItemId = 0;
            this.selectedItemPosition = 0;
            this.buttons = null;
            this.mVisibleItemCount = 0;
            this.mOverflowButton = null;
            this.mOverflowMenu = null;
            this.mVisibleBtns = null;
            this.mInvisibleBtns = null;
            return;
        }
        HashSet hashSet = new HashSet();
        for (int i4 = 0; i4 < this.menu.size(); i4++) {
            hashSet.add(Integer.valueOf(this.menu.getItem(i4).getItemId()));
        }
        for (int i5 = 0; i5 < this.badgeDrawables.size(); i5++) {
            int keyAt = this.badgeDrawables.keyAt(i5);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.badgeDrawables.delete(keyAt);
            }
        }
        int i6 = this.labelVisibilityMode;
        this.menu.getVisibleItems().size();
        if (i6 == 0) {
            z = true;
        } else {
            z = false;
        }
        this.buttons = new NavigationBarItemView[this.menu.size()];
        this.mVisibleBtns = new InternalBtnInfo(size);
        this.mInvisibleBtns = new InternalBtnInfo(size);
        this.mOverflowMenu = new MenuBuilder(getContext());
        this.mVisibleBtns.cnt = 0;
        this.mInvisibleBtns.cnt = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            this.presenter.updateSuspended = true;
            this.menu.getItem(i9).setCheckable(true);
            this.presenter.updateSuspended = false;
            if (((MenuItemImpl) this.menu.getItem(i9)).requiresOverflow()) {
                InternalBtnInfo internalBtnInfo = this.mInvisibleBtns;
                int[] iArr = internalBtnInfo.originPos;
                int i10 = internalBtnInfo.cnt;
                internalBtnInfo.cnt = i10 + 1;
                iArr[i10] = i9;
                if (!this.menu.getItem(i9).isVisible()) {
                    i7++;
                }
            } else {
                InternalBtnInfo internalBtnInfo2 = this.mVisibleBtns;
                int[] iArr2 = internalBtnInfo2.originPos;
                int i11 = internalBtnInfo2.cnt;
                internalBtnInfo2.cnt = i11 + 1;
                iArr2[i11] = i9;
                if (this.menu.getItem(i9).isVisible()) {
                    i8++;
                }
            }
        }
        if (this.mInvisibleBtns.cnt - i7 > 0) {
            r0 = 1;
        } else {
            r0 = 0;
        }
        this.mHasOverflowMenu = r0;
        int i12 = i8 + r0;
        int i13 = this.mMaxItemCount;
        if (i12 > i13) {
            int i14 = i12 - (i13 - 1);
            if (r0 != 0) {
                i14--;
            }
            for (int i15 = this.mVisibleBtns.cnt - 1; i15 >= 0; i15--) {
                if (!this.menu.getItem(this.mVisibleBtns.originPos[i15]).isVisible()) {
                    InternalBtnInfo internalBtnInfo3 = this.mInvisibleBtns;
                    int[] iArr3 = internalBtnInfo3.originPos;
                    int i16 = internalBtnInfo3.cnt;
                    internalBtnInfo3.cnt = i16 + 1;
                    InternalBtnInfo internalBtnInfo4 = this.mVisibleBtns;
                    iArr3[i16] = internalBtnInfo4.originPos[i15];
                    internalBtnInfo4.cnt--;
                } else {
                    InternalBtnInfo internalBtnInfo5 = this.mInvisibleBtns;
                    int[] iArr4 = internalBtnInfo5.originPos;
                    int i17 = internalBtnInfo5.cnt;
                    internalBtnInfo5.cnt = i17 + 1;
                    InternalBtnInfo internalBtnInfo6 = this.mVisibleBtns;
                    iArr4[i17] = internalBtnInfo6.originPos[i15];
                    internalBtnInfo6.cnt--;
                    i14--;
                    if (i14 == 0) {
                        break;
                    }
                }
            }
        }
        this.mVisibleItemCount = 0;
        this.mViewVisibleItemCount = 0;
        int i18 = 0;
        while (true) {
            InternalBtnInfo internalBtnInfo7 = this.mVisibleBtns;
            if (i18 >= internalBtnInfo7.cnt) {
                break;
            }
            int i19 = internalBtnInfo7.originPos[i18];
            if (this.buttons != null) {
                final int i20 = this.mViewType;
                NavigationBarItemView navigationBarItemView2 = (NavigationBarItemView) this.itemPool.acquire();
                if (navigationBarItemView2 == null) {
                    navigationBarItemView2 = new NavigationBarItemView(this, getContext(), i20) { // from class: com.google.android.material.navigation.NavigationBarMenuView.3
                        @Override // com.google.android.material.navigation.NavigationBarItemView
                        public final int getItemLayoutResId() {
                            if (i20 != 3) {
                                return com.android.systemui.R.layout.sesl_bottom_navigation_item;
                            }
                            return com.android.systemui.R.layout.sesl_bottom_navigation_item_text;
                        }
                    };
                }
                this.buttons[this.mVisibleItemCount] = navigationBarItemView2;
                if (this.menu.getItem(i19).isVisible()) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
                navigationBarItemView2.setVisibility(i3);
                navigationBarItemView2.setIconTintList(this.itemIconTint);
                navigationBarItemView2.setIconSize(this.itemIconSize);
                navigationBarItemView2.setTextColor(this.itemTextColorDefault);
                navigationBarItemView2.seslSetLabelTextAppearance(this.mSeslLabelTextAppearance);
                navigationBarItemView2.setTextAppearanceInactive(this.itemTextAppearanceInactive);
                navigationBarItemView2.setTextAppearanceActive(this.itemTextAppearanceActive);
                navigationBarItemView2.setTextColor(this.itemTextColorFromUser);
                navigationBarItemView2.setItemBackground(this.itemBackgroundRes);
                if (navigationBarItemView2.isShifting != z) {
                    navigationBarItemView2.isShifting = z;
                    MenuItemImpl menuItemImpl2 = navigationBarItemView2.itemData;
                    if (menuItemImpl2 != null) {
                        navigationBarItemView2.setChecked(menuItemImpl2.isChecked());
                    }
                }
                navigationBarItemView2.setLabelVisibilityMode(this.labelVisibilityMode);
                navigationBarItemView2.initialize((MenuItemImpl) this.menu.getItem(i19));
                navigationBarItemView2.setOnClickListener(this.onClickListener);
                if (this.selectedItemId != 0 && this.menu.getItem(i19).getItemId() == this.selectedItemId) {
                    this.selectedItemPosition = this.mVisibleItemCount;
                }
                MenuItemImpl menuItemImpl3 = (MenuItemImpl) this.menu.getItem(i19);
                String str = menuItemImpl3.mBadgeText;
                if (str != null) {
                    seslAddBadge(menuItemImpl3.mId, str);
                } else {
                    seslRemoveBadge(menuItemImpl3.mId);
                }
                int id = navigationBarItemView2.getId();
                if (id != -1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (z3 && (badgeDrawable = (BadgeDrawable) this.badgeDrawables.get(id)) != null) {
                    navigationBarItemView2.setBadge(badgeDrawable);
                }
                if (navigationBarItemView2.getParent() instanceof ViewGroup) {
                    ((ViewGroup) navigationBarItemView2.getParent()).removeView(navigationBarItemView2);
                }
                addView(navigationBarItemView2);
                this.mVisibleItemCount++;
                if (navigationBarItemView2.getVisibility() == 0) {
                    this.mViewVisibleItemCount++;
                }
            }
            i18++;
        }
        if (this.mInvisibleBtns.cnt > 0) {
            int i21 = 0;
            int i22 = 0;
            while (true) {
                InternalBtnInfo internalBtnInfo8 = this.mInvisibleBtns;
                i2 = internalBtnInfo8.cnt;
                if (i21 >= i2) {
                    break;
                }
                MenuItemImpl menuItemImpl4 = (MenuItemImpl) this.menu.getItem(internalBtnInfo8.originPos[i21]);
                if (menuItemImpl4 != null) {
                    CharSequence charSequence = menuItemImpl4.mTitle;
                    if (charSequence == null) {
                        charSequence = menuItemImpl4.mContentDescription;
                    }
                    MenuItemImpl addInternal = this.mOverflowMenu.addInternal(menuItemImpl4.mGroup, menuItemImpl4.mId, menuItemImpl4.mCategoryOrder, charSequence);
                    addInternal.setVisible(menuItemImpl4.isVisible());
                    addInternal.setEnabled(menuItemImpl4.isEnabled());
                    this.mOverflowMenu.mGroupDividerEnabled = false;
                    menuItemImpl4.setBadgeText(menuItemImpl4.mBadgeText);
                    if (!menuItemImpl4.isVisible()) {
                        i22++;
                    }
                }
                i21++;
            }
            if (i2 - i22 > 0) {
                this.mHasOverflowMenu = true;
                this.mDummyMenu = new MenuBuilder(getContext());
                new MenuInflater(getContext()).inflate(com.android.systemui.R.menu.nv_dummy_overflow_menu_icon, this.mDummyMenu);
                if (this.mDummyMenu.getItem(0) instanceof MenuItemImpl) {
                    MenuItemImpl menuItemImpl5 = (MenuItemImpl) this.mDummyMenu.getItem(0);
                    if (this.mViewType == 1) {
                        menuItemImpl5.setTooltipText((CharSequence) null);
                    } else {
                        menuItemImpl5.setTooltipText((CharSequence) getResources().getString(com.android.systemui.R.string.sesl_more_item_label));
                    }
                }
                final int i23 = this.mViewType;
                NavigationBarItemView navigationBarItemView3 = (NavigationBarItemView) this.itemPool.acquire();
                if (navigationBarItemView3 == null) {
                    navigationBarItemView3 = new NavigationBarItemView(this, getContext(), i23) { // from class: com.google.android.material.navigation.NavigationBarMenuView.3
                        @Override // com.google.android.material.navigation.NavigationBarItemView
                        public final int getItemLayoutResId() {
                            if (i23 != 3) {
                                return com.android.systemui.R.layout.sesl_bottom_navigation_item;
                            }
                            return com.android.systemui.R.layout.sesl_bottom_navigation_item_text;
                        }
                    };
                }
                navigationBarItemView3.setIconTintList(this.itemIconTint);
                navigationBarItemView3.setIconSize(this.itemIconSize);
                navigationBarItemView3.setTextColor(this.itemTextColorDefault);
                navigationBarItemView3.seslSetLabelTextAppearance(this.mSeslLabelTextAppearance);
                navigationBarItemView3.setTextAppearanceInactive(this.itemTextAppearanceInactive);
                navigationBarItemView3.setTextAppearanceActive(this.itemTextAppearanceActive);
                navigationBarItemView3.setTextColor(this.itemTextColorFromUser);
                navigationBarItemView3.setItemBackground(this.itemBackgroundRes);
                if (navigationBarItemView3.isShifting != z) {
                    navigationBarItemView3.isShifting = z;
                    MenuItemImpl menuItemImpl6 = navigationBarItemView3.itemData;
                    if (menuItemImpl6 != null) {
                        navigationBarItemView3.setChecked(menuItemImpl6.isChecked());
                    }
                }
                navigationBarItemView3.setLabelVisibilityMode(this.labelVisibilityMode);
                navigationBarItemView3.initialize((MenuItemImpl) this.mDummyMenu.getItem(0));
                navigationBarItemView3.mBadgeType = 0;
                navigationBarItemView3.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.navigation.NavigationBarMenuView.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        NavigationBarMenuView navigationBarMenuView = NavigationBarMenuView.this;
                        MenuBuilder menuBuilder2 = navigationBarMenuView.mOverflowMenu;
                        menuBuilder2.mCallback = navigationBarMenuView.mSelectedCallback;
                        navigationBarMenuView.presenter.showOverflowMenu(menuBuilder2);
                    }
                });
                navigationBarItemView3.setContentDescription(getResources().getString(com.android.systemui.R.string.sesl_action_menu_overflow_description));
                if (this.mViewType == 3) {
                    Drawable drawable = getContext().getDrawable(com.android.systemui.R.drawable.sesl_ic_menu_overflow_dark);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(" ");
                    ImageSpan imageSpan = new ImageSpan(drawable);
                    drawable.setState(new int[]{R.attr.state_enabled, -16842910});
                    drawable.setTintList(this.itemTextColorFromUser);
                    drawable.setBounds(0, 0, getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_size), getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_size));
                    spannableStringBuilder.setSpan(imageSpan, 0, 1, 18);
                    navigationBarItemView3.mLabelImgSpan = spannableStringBuilder;
                    navigationBarItemView3.smallLabel.setText(spannableStringBuilder);
                    navigationBarItemView3.largeLabel.setText(spannableStringBuilder);
                }
                if (navigationBarItemView3.getParent() instanceof ViewGroup) {
                    ((ViewGroup) navigationBarItemView3.getParent()).removeView(navigationBarItemView3);
                }
                addView(navigationBarItemView3);
                this.mOverflowButton = navigationBarItemView3;
                this.buttons[this.mVisibleBtns.cnt] = navigationBarItemView3;
                this.mVisibleItemCount++;
                this.mViewVisibleItemCount++;
                navigationBarItemView3.setVisibility(0);
            }
        }
        if (this.mViewVisibleItemCount > this.mMaxItemCount) {
            StringBuilder sb = new StringBuilder("Maximum number of visible items supported by BottomNavigationView is ");
            sb.append(this.mMaxItemCount);
            sb.append(". Current visible count is ");
            TooltipPopup$$ExternalSyntheticOutline0.m(sb, this.mViewVisibleItemCount, "NavigationBarMenuView");
            int i24 = this.mMaxItemCount;
            this.mVisibleItemCount = i24;
            this.mViewVisibleItemCount = i24;
        }
        int i25 = 0;
        while (true) {
            NavigationBarItemView[] navigationBarItemViewArr2 = this.buttons;
            if (i25 < navigationBarItemViewArr2.length) {
                NavigationBarItemView navigationBarItemView4 = navigationBarItemViewArr2[i25];
                if (navigationBarItemView4 != null) {
                    ColorStateList colorStateList = this.itemTextColorFromUser;
                    if (Settings.System.getInt(this.mContentResolver, "show_button_background", 0) == 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        ColorDrawable colorDrawable = this.mSBBTextColorDrawable;
                        if (colorDrawable != null) {
                            color = colorDrawable.getColor();
                        } else {
                            Resources resources = getResources();
                            if (SeslMisc.isLightTheme(getContext())) {
                                i = com.android.systemui.R.color.sesl_bottom_navigation_background_light;
                            } else {
                                i = com.android.systemui.R.color.sesl_bottom_navigation_background_dark;
                            }
                            color = resources.getColor(i, null);
                        }
                        Drawable drawable2 = navigationBarItemView4.getResources().getDrawable(com.android.systemui.R.drawable.sesl_bottom_nav_show_button_shapes_background);
                        navigationBarItemView4.smallLabel.setTextColor(color);
                        navigationBarItemView4.largeLabel.setTextColor(color);
                        navigationBarItemView4.smallLabel.setBackground(drawable2);
                        navigationBarItemView4.largeLabel.setBackground(drawable2);
                        navigationBarItemView4.smallLabel.setBackgroundTintList(colorStateList);
                        navigationBarItemView4.largeLabel.setBackgroundTintList(colorStateList);
                        if (this.mOverflowButton != null && (menuItemImpl = navigationBarItemView4.itemData) != null && (menuBuilder = this.mDummyMenu) != null && menuItemImpl.mId == menuBuilder.getItem(0).getItemId()) {
                            setOverflowSpanColor(color, false);
                        }
                    }
                }
                i25++;
            } else {
                int min = Math.min(this.mMaxItemCount - 1, this.selectedItemPosition);
                this.selectedItemPosition = min;
                this.menu.getItem(min).setChecked(true);
                return;
            }
        }
    }

    public final ColorStateList createDefaultColorStateList() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.textColorSecondary, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = ContextCompat.getColorStateList(typedValue.resourceId, getContext());
        if (!getContext().getTheme().resolveAttribute(com.android.systemui.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i, defaultColor});
    }

    public final NavigationBarItemView findItemView(int i) {
        boolean z;
        if (i != -1) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
            if (navigationBarItemViewArr != null) {
                for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                    if (navigationBarItemView != null) {
                        if (navigationBarItemView.getId() == i) {
                            return navigationBarItemView;
                        }
                    } else {
                        return null;
                    }
                }
                return null;
            }
            return null;
        }
        throw new IllegalArgumentException(i + " is not a valid view id");
    }

    public final void hideOverflowMenu() {
        NavigationBarPresenter navigationBarPresenter;
        boolean z;
        Object obj;
        if (this.mHasOverflowMenu && (navigationBarPresenter = this.presenter) != null) {
            NavigationBarPresenter.OverflowPopup overflowPopup = navigationBarPresenter.mOverflowPopup;
            if (overflowPopup != null && overflowPopup.isShowing()) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                NavigationBarPresenter navigationBarPresenter2 = this.presenter;
                NavigationBarPresenter.OpenOverflowRunnable openOverflowRunnable = navigationBarPresenter2.mPostedOpenRunnable;
                if (openOverflowRunnable != null && (obj = navigationBarPresenter2.mMenuView) != null) {
                    ((View) obj).removeCallbacks(openOverflowRunnable);
                    navigationBarPresenter2.mPostedOpenRunnable = null;
                    return;
                }
                NavigationBarPresenter.OverflowPopup overflowPopup2 = navigationBarPresenter2.mOverflowPopup;
                if (overflowPopup2 != null && overflowPopup2.isShowing()) {
                    overflowPopup2.mPopup.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public final void initialize(MenuBuilder menuBuilder) {
        this.menu = menuBuilder;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mViewType != 3) {
            setItemIconSize(getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_size));
            NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
            if (navigationBarItemViewArr != null) {
                for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                    if (navigationBarItemView == null) {
                        break;
                    }
                    int dimensionPixelSize = getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_size);
                    if (navigationBarItemView.labelGroup != null) {
                        navigationBarItemView.defaultMargin = navigationBarItemView.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_inset);
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) navigationBarItemView.labelGroup.getLayoutParams();
                        if (marginLayoutParams != null) {
                            marginLayoutParams.topMargin = dimensionPixelSize + navigationBarItemView.defaultMargin;
                            navigationBarItemView.labelGroup.setLayoutParams(marginLayoutParams);
                        }
                    }
                }
            }
        }
        hideOverflowMenu();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void seslAddBadge(int r6, java.lang.String r7) {
        /*
            r5 = this;
            com.google.android.material.navigation.NavigationBarItemView r6 = r5.findItemView(r6)
            if (r6 == 0) goto L52
            r0 = 2131363706(0x7f0a077a, float:1.8347228E38)
            android.view.View r0 = r6.findViewById(r0)
            r1 = 2131363705(0x7f0a0779, float:1.8347226E38)
            r2 = 0
            if (r0 == 0) goto L1a
            android.view.View r0 = r0.findViewById(r1)
            android.widget.TextView r0 = (android.widget.TextView) r0
            goto L33
        L1a:
            android.content.Context r0 = r5.getContext()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            r3 = 2131559371(0x7f0d03cb, float:1.8744084E38)
            android.view.View r0 = r0.inflate(r3, r5, r2)
            android.view.View r1 = r0.findViewById(r1)
            android.widget.TextView r1 = (android.widget.TextView) r1
            r6.addView(r0)
            r0 = r1
        L33:
            r1 = 1
            if (r7 != 0) goto L37
            goto L3c
        L37:
            java.lang.Integer.parseInt(r7)     // Catch: java.lang.NumberFormatException -> L3c
            r3 = r1
            goto L3d
        L3c:
            r3 = r2
        L3d:
            if (r3 == 0) goto L4f
            int r3 = java.lang.Integer.parseInt(r7)
            r4 = 999(0x3e7, float:1.4E-42)
            if (r3 <= r4) goto L4c
            r6.mIsBadgeNumberless = r1
            java.lang.String r7 = "999+"
            goto L53
        L4c:
            r6.mIsBadgeNumberless = r2
            goto L53
        L4f:
            r6.mIsBadgeNumberless = r2
            goto L53
        L52:
            r0 = 0
        L53:
            if (r0 == 0) goto L58
            r0.setText(r7)
        L58:
            r5.updateBadge(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationBarMenuView.seslAddBadge(int, java.lang.String):void");
    }

    public final void seslRemoveBadge(int i) {
        View findViewById;
        NavigationBarItemView findItemView = findItemView(i);
        if (findItemView != null && (findViewById = findItemView.findViewById(com.android.systemui.R.id.notifications_badge_container)) != null) {
            findItemView.removeView(findViewById);
        }
    }

    public final void setIconTintList(ColorStateList colorStateList) {
        this.itemIconTint = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView == null) {
                    break;
                }
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
        NavigationBarItemView navigationBarItemView2 = this.mOverflowButton;
        if (navigationBarItemView2 != null) {
            navigationBarItemView2.setIconTintList(colorStateList);
        }
    }

    public final void setItemIconSize(int i) {
        this.itemIconSize = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.buttons;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView == null) {
                    break;
                }
                navigationBarItemView.setIconSize(i);
            }
        }
        NavigationBarItemView navigationBarItemView2 = this.mOverflowButton;
        if (navigationBarItemView2 != null) {
            navigationBarItemView2.setIconSize(i);
        }
    }

    public final void setOverflowSpanColor(int i, boolean z) {
        SpannableStringBuilder spannableStringBuilder;
        NavigationBarItemView navigationBarItemView = this.mOverflowButton;
        if (navigationBarItemView != null && (spannableStringBuilder = navigationBarItemView.mLabelImgSpan) != null) {
            Drawable drawable = getContext().getDrawable(com.android.systemui.R.drawable.sesl_ic_menu_overflow_dark);
            ImageSpan[] imageSpanArr = (ImageSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), ImageSpan.class);
            if (imageSpanArr != null) {
                for (ImageSpan imageSpan : imageSpanArr) {
                    spannableStringBuilder.removeSpan(imageSpan);
                }
            }
            ImageSpan imageSpan2 = new ImageSpan(drawable);
            drawable.setState(new int[]{R.attr.state_enabled, -16842910});
            if (z) {
                drawable.setTintList(this.itemTextColorFromUser);
            } else {
                drawable.setTint(i);
            }
            drawable.setBounds(0, 0, getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_size), getResources().getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_size));
            spannableStringBuilder.setSpan(imageSpan2, 0, 1, 18);
            NavigationBarItemView navigationBarItemView2 = this.mOverflowButton;
            navigationBarItemView2.mLabelImgSpan = spannableStringBuilder;
            navigationBarItemView2.smallLabel.setText(spannableStringBuilder);
            navigationBarItemView2.largeLabel.setText(spannableStringBuilder);
        }
    }

    public final void updateBadge(NavigationBarItemView navigationBarItemView) {
        TextView textView;
        int dimensionPixelSize;
        int width;
        int height;
        int i;
        int i2;
        int measuredWidth;
        if (navigationBarItemView == null || (textView = (TextView) navigationBarItemView.findViewById(com.android.systemui.R.id.notifications_badge)) == null) {
            return;
        }
        Resources resources = getResources();
        int dimensionPixelSize2 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sesl_navigation_bar_num_badge_size);
        float f = getResources().getConfiguration().fontScale;
        if (f > 1.2f) {
            textView.setTextSize(0, (dimensionPixelSize2 / f) * 1.2f);
        }
        int i3 = navigationBarItemView.mBadgeType;
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.android.systemui.R.dimen.sesl_bottom_navigation_dot_badge_size);
        if (this.mVisibleItemCount == this.mMaxItemCount) {
            dimensionPixelSize = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_mode_min_padding_horizontal);
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_icon_mode_padding_horizontal);
        }
        int dimensionPixelSize3 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_N_badge_top_margin);
        int dimensionPixelSize4 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.sesl_bottom_navigation_N_badge_start_margin);
        TextView textView2 = navigationBarItemView.smallLabel;
        if (textView2 == null) {
            textView2 = navigationBarItemView.largeLabel;
        }
        if (textView2 == null) {
            width = 1;
        } else {
            width = textView2.getWidth();
        }
        if (textView2 == null) {
            height = 1;
        } else {
            height = textView2.getHeight();
        }
        if (i3 != 1 && i3 != 0) {
            Drawable drawable = resources.getDrawable(com.android.systemui.R.drawable.sesl_tab_n_badge);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.setBackground(textView, drawable);
            textView.measure(0, 0);
            i = textView.getMeasuredWidth();
            i2 = textView.getMeasuredHeight();
        } else {
            Drawable drawable2 = resources.getDrawable(com.android.systemui.R.drawable.sesl_dot_badge);
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api16Impl.setBackground(textView, drawable2);
            i = dimensionPixelOffset;
            i2 = i;
        }
        if (this.mViewType != 3) {
            if (i3 == 1) {
                measuredWidth = this.itemIconSize / 2;
            } else {
                measuredWidth = (textView.getMeasuredWidth() / 2) - dimensionPixelSize;
                dimensionPixelOffset /= 2;
            }
        } else if (i3 == 1) {
            measuredWidth = (textView.getMeasuredWidth() + width) / 2;
            dimensionPixelOffset = (navigationBarItemView.getHeight() - height) / 2;
        } else if (i3 == 0) {
            measuredWidth = ((width - textView.getMeasuredWidth()) - dimensionPixelSize4) / 2;
            dimensionPixelOffset = ((navigationBarItemView.getHeight() - height) / 2) - dimensionPixelSize3;
        } else {
            measuredWidth = (textView.getMeasuredWidth() + width) / 2;
            dimensionPixelOffset = ((navigationBarItemView.getHeight() - height) / 2) - dimensionPixelSize3;
            if ((textView.getMeasuredWidth() / 2) + (navigationBarItemView.getWidth() / 2) + measuredWidth > navigationBarItemView.getWidth()) {
                measuredWidth += navigationBarItemView.getWidth() - ((textView.getMeasuredWidth() / 2) + ((navigationBarItemView.getWidth() / 2) + measuredWidth));
            }
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) textView.getLayoutParams();
        int i4 = layoutParams.width;
        int i5 = layoutParams.leftMargin;
        if (i4 != i || i5 != measuredWidth) {
            layoutParams.width = i;
            layoutParams.height = i2;
            layoutParams.topMargin = dimensionPixelOffset;
            layoutParams.setMarginStart(measuredWidth);
            textView.setLayoutParams(layoutParams);
        }
    }

    public final void updateMenuView() {
        boolean z;
        MenuBuilder menuBuilder;
        boolean z2;
        AutoTransition autoTransition;
        MenuBuilder menuBuilder2 = this.menu;
        if (menuBuilder2 != null && this.buttons != null && this.mVisibleBtns != null && this.mInvisibleBtns != null) {
            int size = menuBuilder2.size();
            hideOverflowMenu();
            if (size != this.mVisibleBtns.cnt + this.mInvisibleBtns.cnt) {
                buildMenuView();
                return;
            }
            int i = this.selectedItemId;
            int i2 = 0;
            while (true) {
                InternalBtnInfo internalBtnInfo = this.mVisibleBtns;
                if (i2 >= internalBtnInfo.cnt) {
                    break;
                }
                MenuItem item = this.menu.getItem(internalBtnInfo.originPos[i2]);
                if (item.isChecked()) {
                    this.selectedItemId = item.getItemId();
                    this.selectedItemPosition = i2;
                }
                if (item instanceof SeslMenuItem) {
                    seslRemoveBadge(item.getItemId());
                    String str = ((MenuItemImpl) ((SeslMenuItem) item)).mBadgeText;
                    if (str != null) {
                        seslAddBadge(item.getItemId(), str);
                    }
                }
                i2++;
            }
            if (i != this.selectedItemId && (autoTransition = this.set) != null) {
                TransitionManager.beginDelayedTransition(autoTransition, this);
            }
            int i3 = this.labelVisibilityMode;
            this.menu.getVisibleItems().size();
            if (i3 == 0) {
                z = true;
            } else {
                z = false;
            }
            for (int i4 = 0; i4 < this.mVisibleBtns.cnt; i4++) {
                this.presenter.updateSuspended = true;
                this.buttons[i4].setLabelVisibilityMode(this.labelVisibilityMode);
                NavigationBarItemView navigationBarItemView = this.buttons[i4];
                if (navigationBarItemView.isShifting != z) {
                    navigationBarItemView.isShifting = z;
                    MenuItemImpl menuItemImpl = navigationBarItemView.itemData;
                    if (menuItemImpl != null) {
                        navigationBarItemView.setChecked(menuItemImpl.isChecked());
                    }
                }
                this.buttons[i4].initialize((MenuItemImpl) this.menu.getItem(this.mVisibleBtns.originPos[i4]));
                this.presenter.updateSuspended = false;
            }
            int i5 = 0;
            boolean z3 = false;
            while (true) {
                InternalBtnInfo internalBtnInfo2 = this.mInvisibleBtns;
                if (i5 >= internalBtnInfo2.cnt) {
                    break;
                }
                MenuItem item2 = this.menu.getItem(internalBtnInfo2.originPos[i5]);
                if ((item2 instanceof SeslMenuItem) && (menuBuilder = this.mOverflowMenu) != null) {
                    SeslMenuItem seslMenuItem = (SeslMenuItem) item2;
                    MenuItem findItem = menuBuilder.findItem(item2.getItemId());
                    if (findItem instanceof SeslMenuItem) {
                        findItem.setTitle(item2.getTitle());
                        ((MenuItemImpl) ((SeslMenuItem) findItem)).setBadgeText(((MenuItemImpl) seslMenuItem).mBadgeText);
                    }
                    if (((MenuItemImpl) seslMenuItem).mBadgeText != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z3 |= z2;
                }
                i5++;
            }
            if (z3) {
                seslAddBadge(com.android.systemui.R.id.bottom_overflow, "");
            } else {
                seslRemoveBadge(com.android.systemui.R.id.bottom_overflow);
            }
        }
    }
}
