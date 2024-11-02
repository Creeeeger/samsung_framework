package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.util.SeslMisc;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopup;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.StandardMenuPopup;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.content.ContextCompat;
import androidx.reflect.widget.SeslTextViewReflector;
import com.android.systemui.R;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ActionMenuPresenter extends BaseMenuPresenter {
    public final SparseBooleanArray mActionButtonGroups;
    public ActionButtonSubmenu mActionButtonPopup;
    public int mActionItemWidthLimit;
    public boolean mExpandedActionViewsExclusive;
    public int mMaxItems;
    public final NumberFormat mNumberFormat;
    public int mOpenSubMenuId;
    public OverflowMenuButton mOverflowButton;
    public OverflowPopup mOverflowPopup;
    public ActionMenuPopupCallback mPopupCallback;
    public final PopupPresenterCallback mPopupPresenterCallback;
    public OpenOverflowRunnable mPostedOpenRunnable;
    public boolean mReserveOverflow;
    public boolean mReserveOverflowSet;
    public final boolean mUseTextItemMode;
    public int mWidthLimit;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle);
            boolean z;
            if ((subMenuBuilder.mItem.mFlags & 32) == 32) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                View view2 = ActionMenuPresenter.this.mOverflowButton;
                this.mAnchorView = view2 == null ? (View) ActionMenuPresenter.this.mMenuView : view2;
            }
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.mPopupPresenterCallback;
            this.mPresenterCallback = popupPresenterCallback;
            StandardMenuPopup standardMenuPopup = this.mPopup;
            if (standardMenuPopup != null) {
                standardMenuPopup.mPresenterCallback = popupPresenterCallback;
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void onDismiss() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.mActionButtonPopup = null;
            actionMenuPresenter.mOpenSubMenuId = 0;
            super.onDismiss();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        public ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public final MenuPopup getPopup() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.mActionButtonPopup;
            if (actionButtonSubmenu != null) {
                return actionButtonSubmenu.getPopup();
            }
            return null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OpenOverflowRunnable implements Runnable {
        public final OverflowPopup mPopup;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.mPopup = overflowPopup;
        }

        @Override // java.lang.Runnable
        public final void run() {
            MenuBuilder.Callback callback;
            MenuBuilder menuBuilder = ActionMenuPresenter.this.mMenu;
            if (menuBuilder != null && (callback = menuBuilder.mCallback) != null) {
                callback.onMenuModeChange(menuBuilder);
            }
            View view = (View) ActionMenuPresenter.this.mMenuView;
            if (view != null && view.getWindowToken() != null && this.mPopup.tryShow$1()) {
                ActionMenuPresenter.this.mOverflowPopup = this.mPopup;
            }
            ActionMenuPresenter.this.mPostedOpenRunnable = null;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OverflowImageView extends AppCompatImageView {
        public Configuration mConfiguration;

        public OverflowImageView(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setLongClickable(true);
            String string = getResources().getString(R.string.sesl_action_menu_overflow_description);
            ActionMenuPresenter.this.getClass();
            setTooltipText(string);
            this.mConfiguration = ActionMenuPresenter.this.mContext.getResources().getConfiguration();
        }

        @Override // android.view.View
        public final void onConfigurationChanged(Configuration configuration) {
            int i;
            super.onConfigurationChanged(configuration);
            Configuration configuration2 = this.mConfiguration;
            if (configuration2 != null) {
                i = configuration2.diff(configuration);
            } else {
                i = 4096;
            }
            this.mConfiguration = configuration;
            Context context = getContext();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.View, R.attr.actionOverflowButtonStyle, 0);
            setMinimumHeight(obtainStyledAttributes.getDimensionPixelSize(4, 0));
            obtainStyledAttributes.recycle();
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            context.getResources().getString(R.string.sesl_action_menu_overflow_description);
            actionMenuPresenter.getClass();
            if ((i & 4096) != 0) {
                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(null, R$styleable.AppCompatImageView, R.attr.actionOverflowButtonStyle, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
                Object obj = ContextCompat.sLock;
                Drawable drawable = context.getDrawable(resourceId);
                if (drawable != null) {
                    setImageDrawable(drawable);
                }
                obtainStyledAttributes2.recycle();
            }
        }

        @Override // android.widget.ImageView, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            if (ActionMenuPresenter.this.showOverflowMenu() && isHovered()) {
                TooltipCompatHandler.sIsTooltipNull = true;
            }
            return true;
        }

        @Override // android.view.View
        public final boolean performLongClick() {
            TooltipCompatHandler.sIsForceActionBarX = true;
            TooltipCompatHandler.sIsForceBelow = true;
            return super.performLongClick();
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int paddingLeft = (getPaddingLeft() - getPaddingRight()) / 2;
                background.setHotspotBounds(paddingLeft, 0, width + paddingLeft, height);
            }
            return frame;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OverflowMenuButton extends FrameLayout implements ActionMenuView.ActionMenuChildView {
        public final ViewGroup mBadgeBackground;
        public CharSequence mBadgeContentDescription;
        public final TextView mBadgeText;
        public CharSequence mContentDescription;
        public final View mInnerView;

        public OverflowMenuButton(Context context) {
            super(context);
            View overflowImageView;
            if (ActionMenuPresenter.this.mUseTextItemMode) {
                overflowImageView = new OverflowTextView(context);
            } else {
                overflowImageView = new OverflowImageView(context);
            }
            this.mInnerView = overflowImageView;
            addView(overflowImageView, new FrameLayout.LayoutParams(-2, -2));
            Resources resources = getResources();
            if (overflowImageView instanceof OverflowImageView) {
                this.mContentDescription = overflowImageView.getContentDescription();
                this.mBadgeContentDescription = ((Object) this.mContentDescription) + " , " + resources.getString(R.string.sesl_action_menu_overflow_badge_description);
            }
            if (TextUtils.isEmpty(this.mContentDescription)) {
                CharSequence string = resources.getString(R.string.sesl_action_menu_overflow_description);
                this.mContentDescription = string;
                overflowImageView.setContentDescription(string);
            }
            ViewGroup viewGroup = (ViewGroup) ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.sesl_action_menu_item_badge, (ViewGroup) this, false);
            this.mBadgeBackground = viewGroup;
            this.mBadgeText = (TextView) viewGroup.getChildAt(0);
            addView(viewGroup);
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean needsDividerAfter() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean needsDividerBefore() {
            return false;
        }

        @Override // android.view.View
        public final void onConfigurationChanged(Configuration configuration) {
            float f;
            super.onConfigurationChanged(configuration);
            Resources resources = getResources();
            this.mBadgeText.setTextSize(0, (int) resources.getDimension(R.dimen.sesl_menu_item_badge_text_size));
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mBadgeBackground.getLayoutParams();
            CharSequence text = this.mBadgeText.getText();
            if (text != null && text.toString() != null) {
                marginLayoutParams.width = (int) resources.getDimension(R.dimen.sesl_menu_item_badge_size);
                marginLayoutParams.height = (int) resources.getDimension(R.dimen.sesl_menu_item_badge_size);
            } else {
                float dimension = resources.getDimension(R.dimen.sesl_badge_default_width);
                if (text != null) {
                    f = resources.getDimension(R.dimen.sesl_badge_additional_width) * text.length();
                } else {
                    f = 0.0f;
                }
                marginLayoutParams.width = (int) (dimension + f);
                marginLayoutParams.height = (int) (resources.getDimension(R.dimen.sesl_badge_additional_width) + resources.getDimension(R.dimen.sesl_badge_default_width));
                marginLayoutParams.topMargin = (int) getResources().getDimension(R.dimen.sesl_menu_item_number_badge_top_margin);
                marginLayoutParams.setMarginEnd((int) resources.getDimension(R.dimen.sesl_menu_item_number_badge_end_margin));
            }
            this.mBadgeBackground.setLayoutParams(marginLayoutParams);
            if (this.mInnerView instanceof OverflowImageView) {
                this.mContentDescription = getContentDescription();
                this.mBadgeContentDescription = ((Object) this.mContentDescription) + " , " + resources.getString(R.string.sesl_action_menu_overflow_badge_description);
            }
            if (TextUtils.isEmpty(this.mContentDescription)) {
                this.mContentDescription = resources.getString(R.string.sesl_action_menu_overflow_description);
                this.mBadgeContentDescription = ((Object) this.mContentDescription) + " , " + resources.getString(R.string.sesl_action_menu_overflow_badge_description);
            }
            if (this.mBadgeBackground.getVisibility() == 0) {
                View view = this.mInnerView;
                if (view instanceof OverflowImageView) {
                    view.setContentDescription(this.mBadgeContentDescription);
                    return;
                }
                return;
            }
            View view2 = this.mInnerView;
            if (view2 instanceof OverflowImageView) {
                view2.setContentDescription(this.mContentDescription);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z, R.attr.actionOverflowMenuStyle);
            this.mDropDownGravity = 8388613;
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.mPopupPresenterCallback;
            this.mPresenterCallback = popupPresenterCallback;
            StandardMenuPopup standardMenuPopup = this.mPopup;
            if (standardMenuPopup != null) {
                standardMenuPopup.mPresenterCallback = popupPresenterCallback;
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void onDismiss() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
            if (menuBuilder != null) {
                menuBuilder.close(true);
            }
            actionMenuPresenter.mOverflowPopup = null;
            super.onDismiss();
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class OverflowTextView extends AppCompatTextView {
        public OverflowTextView(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, R$styleable.AppCompatTheme, 0, 0);
            setTextAppearance(obtainStyledAttributes.getResourceId(26, 0));
            obtainStyledAttributes.recycle();
            setText(getResources().getString(R.string.sesl_more_item_label));
            boolean isLightTheme = SeslMisc.isLightTheme(context);
            ActionMenuPresenter.this.getClass();
            if (isLightTheme) {
                setBackgroundResource(R.drawable.sesl_action_bar_item_text_background_light);
            } else {
                setBackgroundResource(R.drawable.sesl_action_bar_item_text_background_dark);
            }
            SeslTextViewReflector.semSetButtonShapeEnabled(this, true);
        }

        @Override // android.widget.TextView, android.view.View
        public final void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
        }

        @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.showOverflowMenu();
            return true;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class PopupPresenterCallback implements MenuPresenter.Callback {
        public PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                menuBuilder.getRootMenu().close(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.mCallback;
            if (callback != null) {
                callback.onCloseMenu(menuBuilder, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            if (menuBuilder == actionMenuPresenter.mMenu) {
                return false;
            }
            actionMenuPresenter.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).mItem.mId;
            MenuPresenter.Callback callback = actionMenuPresenter.mCallback;
            if (callback == null) {
                return false;
            }
            return callback.onOpenSubMenu(menuBuilder);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator() { // from class: androidx.appcompat.widget.ActionMenuPresenter.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int openSubMenuId;

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.openSubMenuId);
        }

        public SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.sesl_action_menu_layout, R.layout.sesl_action_menu_item_layout);
        this.mActionButtonGroups = new SparseBooleanArray();
        this.mPopupPresenterCallback = new PopupPresenterCallback();
        this.mNumberFormat = NumberFormat.getInstance(Locale.getDefault());
        this.mUseTextItemMode = context.getResources().getBoolean(R.bool.sesl_action_bar_text_item_mode);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final void bindItemView(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.initialize(menuItemImpl);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.mItemInvoker = (ActionMenuView) this.mMenuView;
        if (this.mPopupCallback == null) {
            this.mPopupCallback = new ActionMenuPopupCallback();
        }
        actionMenuItemView.mPopupCallback = this.mPopupCallback;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final boolean filterLeftoverView(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.mOverflowButton) {
            return false;
        }
        viewGroup.removeViewAt(i);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final boolean flagActionItems() {
        ArrayList arrayList;
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.mMenu;
        View view = null;
        boolean z8 = false;
        if (menuBuilder != null) {
            arrayList = menuBuilder.getVisibleItems();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i2 = actionMenuPresenter.mMaxItems;
        int i3 = actionMenuPresenter.mActionItemWidthLimit;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        Object obj = actionMenuPresenter.mMenuView;
        if (obj == null) {
            Log.d("ActionMenuPresenter", "mMenuView is null, maybe Menu has not been initialized.");
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) obj;
        int i4 = 0;
        boolean z9 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            z = 1;
            if (i4 >= i) {
                break;
            }
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayList.get(i4);
            if (menuItemImpl.requiresActionButton()) {
                i5++;
            } else {
                if ((menuItemImpl.mShowAsAction & 1) == 1) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                if (z7) {
                    i6++;
                } else {
                    z9 = true;
                }
            }
            if (actionMenuPresenter.mExpandedActionViewsExclusive && menuItemImpl.mIsActionViewExpanded) {
                i2 = 0;
            }
            i4++;
        }
        if (actionMenuPresenter.mReserveOverflow && (z9 || i6 + i5 > i2)) {
            i2--;
        }
        int i7 = i2 - i5;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.mActionButtonGroups;
        sparseBooleanArray.clear();
        int i8 = 0;
        int i9 = 0;
        ActionMenuPresenter actionMenuPresenter2 = actionMenuPresenter;
        while (i8 < i) {
            MenuItemImpl menuItemImpl2 = (MenuItemImpl) arrayList.get(i8);
            if (menuItemImpl2.requiresActionButton()) {
                View itemView = actionMenuPresenter2.getItemView(menuItemImpl2, view, viewGroup);
                itemView.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = itemView.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i9 == 0) {
                    i9 = measuredWidth;
                }
                int i10 = menuItemImpl2.mGroup;
                if (i10 != 0) {
                    sparseBooleanArray.put(i10, z);
                }
                menuItemImpl2.setIsActionButton(z);
                z3 = z8;
            } else {
                if ((menuItemImpl2.mShowAsAction & z) == z) {
                    z2 = z;
                } else {
                    z2 = z8;
                }
                if (z2) {
                    int i11 = menuItemImpl2.mGroup;
                    boolean z10 = sparseBooleanArray.get(i11);
                    if ((i7 > 0 || z10) && i3 > 0) {
                        z4 = z;
                    } else {
                        z4 = z8;
                    }
                    if (z4) {
                        View itemView2 = actionMenuPresenter2.getItemView(menuItemImpl2, view, viewGroup);
                        itemView2.measure(makeMeasureSpec, makeMeasureSpec);
                        int measuredWidth2 = itemView2.getMeasuredWidth();
                        i3 -= measuredWidth2;
                        if (i9 == 0) {
                            i9 = measuredWidth2;
                        }
                        if (i3 >= 0) {
                            z6 = z;
                        } else {
                            z6 = false;
                        }
                        z4 &= z6;
                    }
                    boolean z11 = z4;
                    if (z11 && i11 != 0) {
                        sparseBooleanArray.put(i11, z);
                    } else if (z10) {
                        sparseBooleanArray.put(i11, false);
                        for (int i12 = 0; i12 < i8; i12++) {
                            MenuItemImpl menuItemImpl3 = (MenuItemImpl) arrayList.get(i12);
                            if (menuItemImpl3.mGroup == i11) {
                                if ((menuItemImpl3.mFlags & 32) == 32) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                if (z5) {
                                    i7++;
                                }
                                menuItemImpl3.setIsActionButton(false);
                            }
                        }
                    }
                    if (z11) {
                        i7--;
                    }
                    menuItemImpl2.setIsActionButton(z11);
                    z3 = false;
                } else {
                    z3 = z8;
                    menuItemImpl2.setIsActionButton(z3);
                }
            }
            i8++;
            z8 = z3;
            view = null;
            z = 1;
            actionMenuPresenter2 = this;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        int i;
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        if (menuItemImpl.mIsActionViewExpanded) {
            i = 8;
        } else {
            i = 0;
        }
        actionView.setVisibility(i);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!((ActionMenuView) viewGroup).checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(ActionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public final boolean hideOverflowMenu() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.mPostedOpenRunnable;
        if (openOverflowRunnable != null && (obj = this.mMenuView) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        }
        OverflowPopup overflowPopup = this.mOverflowPopup;
        if (overflowPopup != null) {
            if (overflowPopup.isShowing()) {
                overflowPopup.mPopup.dismiss();
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicy = ActionBarPolicy.get(context);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = true;
        }
        this.mWidthLimit = (int) (actionBarPolicy.mContext.getResources().getDisplayMetrics().widthPixels * 0.7f);
        this.mMaxItems = actionBarPolicy.getMaxActionButtons();
        int i = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.mSystemContext);
                this.mOverflowButton = overflowMenuButton;
                overflowMenuButton.setId(R.id.sesl_action_bar_overflow_button);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.mOverflowButton.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = i;
        float f = resources.getDisplayMetrics().density;
    }

    public final boolean isOverflowMenuShowing() {
        OverflowPopup overflowPopup = this.mOverflowPopup;
        if (overflowPopup != null && overflowPopup.isShowing()) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        hideOverflowMenu();
        ActionButtonSubmenu actionButtonSubmenu = this.mActionButtonPopup;
        if (actionButtonSubmenu != null && actionButtonSubmenu.isShowing()) {
            actionButtonSubmenu.mPopup.dismiss();
        }
        super.onCloseMenu(menuBuilder, z);
    }

    public final void onConfigurationChanged() {
        OverflowMenuButton overflowMenuButton;
        this.mMaxItems = ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        int i = (int) (r0.mContext.getResources().getDisplayMetrics().widthPixels * 0.7f);
        this.mWidthLimit = i;
        if (this.mReserveOverflow && (overflowMenuButton = this.mOverflowButton) != null) {
            this.mActionItemWidthLimit = i - overflowMenuButton.getMeasuredWidth();
        } else {
            this.mActionItemWidthLimit = i;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder != null) {
            menuBuilder.onItemsChanged(true);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        MenuBuilder menuBuilder;
        MenuItem findItem;
        if ((parcelable instanceof SavedState) && (i = ((SavedState) parcelable).openSubMenuId) > 0 && (menuBuilder = this.mMenu) != null && (findItem = menuBuilder.findItem(i)) != null) {
            onSubMenuSelected((SubMenuBuilder) findItem.getSubMenu());
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.openSubMenuId = this.mOpenSubMenuId;
        return savedState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008c  */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L4
            return r0
        L4:
            boolean r1 = r8.hasVisibleItems()
            if (r1 != 0) goto Lb
            return r0
        Lb:
            r1 = r8
        Lc:
            androidx.appcompat.view.menu.MenuBuilder r2 = r1.mParentMenu
            androidx.appcompat.view.menu.MenuBuilder r3 = r7.mMenu
            if (r2 == r3) goto L16
            r1 = r2
            androidx.appcompat.view.menu.SubMenuBuilder r1 = (androidx.appcompat.view.menu.SubMenuBuilder) r1
            goto Lc
        L16:
            androidx.appcompat.view.menu.MenuItemImpl r1 = r1.mItem
            androidx.appcompat.view.menu.MenuView r2 = r7.mMenuView
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            if (r2 != 0) goto L1f
            goto L3b
        L1f:
            int r3 = r2.getChildCount()
            r4 = r0
        L24:
            if (r4 >= r3) goto L3b
            android.view.View r5 = r2.getChildAt(r4)
            boolean r6 = r5 instanceof androidx.appcompat.view.menu.MenuView.ItemView
            if (r6 == 0) goto L38
            r6 = r5
            androidx.appcompat.view.menu.MenuView$ItemView r6 = (androidx.appcompat.view.menu.MenuView.ItemView) r6
            androidx.appcompat.view.menu.MenuItemImpl r6 = r6.getItemData()
            if (r6 != r1) goto L38
            goto L3c
        L38:
            int r4 = r4 + 1
            goto L24
        L3b:
            r5 = 0
        L3c:
            if (r5 != 0) goto L3f
            return r0
        L3f:
            androidx.appcompat.view.menu.MenuItemImpl r1 = r8.mItem
            int r1 = r1.mId
            r7.mOpenSubMenuId = r1
            int r1 = r8.size()
            r2 = r0
        L4a:
            r3 = 1
            if (r2 >= r1) goto L62
            android.view.MenuItem r4 = r8.getItem(r2)
            boolean r6 = r4.isVisible()
            if (r6 == 0) goto L5f
            android.graphics.drawable.Drawable r4 = r4.getIcon()
            if (r4 == 0) goto L5f
            r1 = r3
            goto L63
        L5f:
            int r2 = r2 + 1
            goto L4a
        L62:
            r1 = r0
        L63:
            androidx.appcompat.widget.ActionMenuPresenter$ActionButtonSubmenu r2 = new androidx.appcompat.widget.ActionMenuPresenter$ActionButtonSubmenu
            android.content.Context r4 = r7.mContext
            r2.<init>(r4, r8, r5)
            r7.mActionButtonPopup = r2
            r2.mForceShowIcon = r1
            androidx.appcompat.view.menu.StandardMenuPopup r4 = r2.mPopup
            if (r4 == 0) goto L76
            androidx.appcompat.view.menu.MenuAdapter r4 = r4.mAdapter
            r4.mForceShowIcon = r1
        L76:
            boolean r1 = r2.isShowing()
            if (r1 == 0) goto L7d
            goto L85
        L7d:
            android.view.View r1 = r2.mAnchorView
            if (r1 != 0) goto L82
            goto L86
        L82:
            r2.showPopup(r0, r0)
        L85:
            r0 = r3
        L86:
            if (r0 == 0) goto L8c
            super.onSubMenuSelected(r8)
            return r3
        L8c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "MenuPopupHelper cannot be used without an anchor"
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder):boolean");
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final boolean shouldIncludeItem(MenuItemImpl menuItemImpl) {
        if ((menuItemImpl.mFlags & 32) == 32) {
            return true;
        }
        return false;
    }

    public final boolean showOverflowMenu() {
        MenuBuilder menuBuilder;
        if (this.mReserveOverflow && !isOverflowMenuShowing() && (menuBuilder = this.mMenu) != null && this.mMenuView != null && this.mPostedOpenRunnable == null) {
            menuBuilder.flagActionItems();
            if (!menuBuilder.mNonActionItems.isEmpty()) {
                OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.mContext, this.mMenu, this.mOverflowButton, true));
                this.mPostedOpenRunnable = openOverflowRunnable;
                ((View) this.mMenuView).post(openOverflowRunnable);
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0091  */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateMenuView(boolean r10) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionMenuPresenter.updateMenuView(boolean):void");
    }
}
