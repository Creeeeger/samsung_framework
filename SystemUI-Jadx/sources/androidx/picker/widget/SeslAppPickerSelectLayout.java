package androidx.picker.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.picker.adapter.HeaderFooterAdapter;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager;
import androidx.picker.common.log.LogTag;
import androidx.picker.common.log.LogTagHelperKt;
import androidx.picker.decorator.RecyclerViewCornerDecoration;
import androidx.picker.helper.DrawableHelperKt;
import androidx.picker.model.AppData;
import androidx.picker.model.AppInfo;
import androidx.picker.model.AppInfoData;
import androidx.picker.model.SpanData;
import androidx.picker.model.appdata.CategoryAppData;
import androidx.picker.model.appdata.GroupAppData;
import androidx.picker.model.viewdata.ViewData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class SeslAppPickerSelectLayout extends FrameLayout implements LogTag {
    public static final /* synthetic */ int $r8$clinit = 0;
    public LayoutType curLayoutType;
    public final FrameLayout mAppPickerStateContainerView;
    public final SeslAppPickerListView mAppPickerStateView;
    public final CheckStateManager mCheckStateManager;
    public int mHeaderHeight;
    public boolean mHeaderVisibility;
    public final int mListItemHeight;
    public final TextView mMainViewTitleView;
    public final ConstraintLayout mRootView;
    public final View mSearchNoResultFoundView;
    public final SelectLayoutType mSelectLayoutType;
    public final SeslAppPickerGridView mSelectedListView;
    public final FrameLayout mSelectedViewHeader;
    public int mSelectedViewHeight;
    public int mSelectedViewTitleHeight;
    public boolean mShouldCheckHeaderVisibility;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker.widget.SeslAppPickerSelectLayout$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker.widget.SeslAppPickerSelectLayout$8, reason: invalid class name */
    /* loaded from: classes.dex */
    public abstract /* synthetic */ class AnonymousClass8 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$picker$widget$SeslAppPickerSelectLayout$SelectLayoutType;

        static {
            int[] iArr = new int[SelectLayoutType.values().length];
            $SwitchMap$androidx$picker$widget$SeslAppPickerSelectLayout$SelectLayoutType = iArr;
            try {
                iArr[SelectLayoutType.PORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$picker$widget$SeslAppPickerSelectLayout$SelectLayoutType[SelectLayoutType.LAND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$picker$widget$SeslAppPickerSelectLayout$SelectLayoutType[SelectLayoutType.AUTO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class CheckStateManager implements LogTag {
        public final LinkedHashMap mFixedAppMap = new LinkedHashMap();
        public final LinkedHashMap mCheckedMap = new LinkedHashMap();

        public final AppInfoData get(AppInfo appInfo) {
            LinkedHashMap linkedHashMap = this.mCheckedMap;
            if (linkedHashMap.containsKey(appInfo)) {
                return (AppInfoData) linkedHashMap.get(appInfo);
            }
            LinkedHashMap linkedHashMap2 = this.mFixedAppMap;
            if (linkedHashMap2.containsKey(appInfo)) {
                return (AppInfoData) linkedHashMap2.get(appInfo);
            }
            return null;
        }

        @Override // androidx.picker.common.log.LogTag
        public final String getLogTag() {
            return "CheckStateManager";
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum LayoutType {
        LAND(R.layout.picker_app_list_selectlayout_template_land),
        LAND_HEADER_ONLY(R.layout.picker_app_list_selectlayout_template_land_header_only),
        LAND_SELECTED(R.layout.picker_app_list_selectlayout_template_land_with_selected),
        PORT(R.layout.picker_app_list_selectlayout_template_portrait),
        PORT_SELECTED(R.layout.picker_app_list_selectlayout_template_portrait_with_selected);

        public final int layoutResId;

        LayoutType(int i) {
            this.layoutResId = i;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public enum SelectLayoutType {
        AUTO,
        PORT,
        LAND
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SelectedHorizontalItemDecoration extends RecyclerView.ItemDecoration {
        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int i;
            super.getItemOffsets(rect, view, recyclerView, state);
            if (recyclerView.mAdapter == null) {
                return;
            }
            int childAdapterPosition = RecyclerView.getChildAdapterPosition(view);
            Resources resources = recyclerView.getContext().getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.picker_app_selected_layout_horizontal_padding);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.picker_app_selected_item_view_interval_horizontal_on_port);
            if (childAdapterPosition == 0) {
                i = dimensionPixelSize;
            } else {
                i = dimensionPixelSize2;
            }
            rect.left = i;
            if (childAdapterPosition != r3.getItemCount() - 1) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            rect.right = dimensionPixelSize;
            rect.top = resources.getDimensionPixelSize(R.dimen.picker_app_grid_item_view_item_top_padding);
            rect.bottom = resources.getDimensionPixelSize(R.dimen.picker_app_grid_item_view_item_bottom_padding);
            View findViewById = view.findViewById(R.id.item);
            findViewById.getLayoutParams().width = resources.getDimensionPixelOffset(R.dimen.picker_app_grid_item_view_title_width);
            findViewById.getLayoutParams().height = (int) Math.ceil(((resources.getDimension(R.dimen.picker_app_grid_icon_title_size) * 2.0f) + (resources.getDimension(R.dimen.picker_app_grid_item_view_icon_layout_margin_bottom) + (resources.getDimension(R.dimen.picker_app_grid_item_view_icon_layout_margin_top) + resources.getDimension(R.dimen.picker_app_grid_icon_size)))) - resources.getDimension(R.dimen.picker_app_grid_item_view_remove_icon_layout_margin));
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    public final class SelectedVerticallItemDecoration extends RecyclerView.ItemDecoration {
        public final int spacing;

        public SelectedVerticallItemDecoration(int i) {
            this.spacing = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            int i;
            super.getItemOffsets(rect, view, recyclerView, state);
            recyclerView.getClass();
            int childAdapterPosition = RecyclerView.getChildAdapterPosition(view);
            if (childAdapterPosition == -1 || recyclerView.mAdapter == null) {
                return;
            }
            RecyclerView.LayoutManager layoutManager$1 = recyclerView.getLayoutManager$1();
            if (!(layoutManager$1 instanceof GridLayoutManager)) {
                return;
            }
            int i2 = ((GridLayoutManager) layoutManager$1).mSpanCount;
            int i3 = this.spacing / 2;
            rect.top = i3;
            rect.bottom = i3;
            int dimensionPixelOffset = view.getContext().getResources().getDimensionPixelOffset(R.dimen.picker_app_selected_layout_horizontal_interval) / 2;
            int i4 = childAdapterPosition % i2;
            if (i4 == 0) {
                i = 0;
            } else {
                i = dimensionPixelOffset;
            }
            rect.left = i;
            if (i4 == i2 - 1) {
                dimensionPixelOffset = 0;
            }
            rect.right = dimensionPixelOffset;
            view.findViewById(R.id.item).getLayoutParams().width = -1;
        }
    }

    public SeslAppPickerSelectLayout(Context context) {
        this(context, null);
    }

    public static AppInfoData convertCheckBox2Remove(AppInfoData appInfoData) {
        return new AppData.GridRemoveAppDataBuilder(appInfoData).setIcon(DrawableHelperKt.newMutateDrawable(appInfoData.getIcon())).setSubIcon(DrawableHelperKt.newMutateDrawable(appInfoData.getSubIcon())).build();
    }

    public static CategoryAppData getCategoryAppDataContainsAppInfo(List list, AppInfo appInfo) {
        AppInfoData appInfoData;
        CategoryAppData categoryAppData;
        Iterator it = ((ArrayList) list).iterator();
        do {
            appInfoData = null;
            if (!it.hasNext()) {
                return null;
            }
            categoryAppData = (CategoryAppData) it.next();
            Iterator it2 = categoryAppData.appInfoDataList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                AppInfoData appInfoData2 = (AppInfoData) it2.next();
                if (appInfoData2.getAppInfo().equals(appInfo)) {
                    appInfoData = appInfoData2;
                    break;
                }
            }
        } while (appInfoData == null);
        return categoryAppData;
    }

    public static List getCategoryAppDataList(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AppData appData = (AppData) it.next();
            if (appData instanceof GroupAppData) {
                arrayList.addAll(CollectionsKt___CollectionsJvmKt.filterIsInstance(((GroupAppData) appData).appDataList, CategoryAppData.class));
            } else if (appData instanceof CategoryAppData) {
                arrayList.add((CategoryAppData) appData);
            }
        }
        return arrayList;
    }

    public final void addCheckedItem(AppInfoData appInfoData) {
        if (appInfoData.getDimmed()) {
            CheckStateManager checkStateManager = this.mCheckStateManager;
            checkStateManager.getClass();
            AppInfo appInfo = appInfoData.getAppInfo();
            LinkedHashMap linkedHashMap = checkStateManager.mFixedAppMap;
            if (linkedHashMap.containsKey(appInfo)) {
                LogTagHelperKt.warn(checkStateManager, appInfoData + " is already added");
                return;
            }
            linkedHashMap.put(appInfo, appInfoData);
            return;
        }
        CheckStateManager checkStateManager2 = this.mCheckStateManager;
        checkStateManager2.getClass();
        AppInfo appInfo2 = appInfoData.getAppInfo();
        LinkedHashMap linkedHashMap2 = checkStateManager2.mCheckedMap;
        if (linkedHashMap2.containsKey(appInfo2)) {
            LogTagHelperKt.warn(checkStateManager2, appInfoData + " is already added");
            return;
        }
        linkedHashMap2.put(appInfo2, appInfoData);
    }

    public final void addSelectItem(CategoryAppData categoryAppData) {
        removeSelectItemInCategory(categoryAppData);
        AppInfoData build = new AppData.GridRemoveAppDataBuilder(categoryAppData.appInfo).setLabel(categoryAppData.label).setIcon(DrawableHelperKt.newMutateDrawable(categoryAppData.icon)).setSelected(categoryAppData.getSelected()).build();
        addCheckedItem(build);
        Arrays.asList(build);
    }

    public final int convertOrientation(int i) {
        int i2 = AnonymousClass8.$SwitchMap$androidx$picker$widget$SeslAppPickerSelectLayout$SelectLayoutType[this.mSelectLayoutType.ordinal()];
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                return i;
            }
        }
        return i3;
    }

    @Override // androidx.picker.common.log.LogTag
    public final String getLogTag() {
        return "SeslAppPickerSelectLayout";
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mShouldCheckHeaderVisibility = shouldCheckHeaderVisibility();
        if (this.mSelectLayoutType == SelectLayoutType.AUTO) {
            updateLayout();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.mSelectedViewHeader.getChildCount() > 0) {
            post(new SeslAppPickerSelectLayout$$ExternalSyntheticLambda0(this, 0));
        }
    }

    public final void refreshSelectedAppPickerView(boolean z) {
        boolean z2;
        LayoutType layoutType;
        int convertOrientation = convertOrientation(getResources().getConfiguration().orientation);
        int i = 0;
        if (this.mSelectedViewHeader.getChildCount() > 0 && this.mHeaderVisibility) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (convertOrientation == 1) {
            layoutType = LayoutType.PORT;
        } else if (z2) {
            layoutType = LayoutType.LAND_HEADER_ONLY;
        } else {
            layoutType = LayoutType.LAND;
        }
        if (this.curLayoutType != layoutType) {
            this.curLayoutType = layoutType;
            int visibility = this.mSearchNoResultFoundView.getVisibility();
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(layoutType.layoutResId, getContext());
            constraintSet.applyTo(this.mRootView);
            this.mSearchNoResultFoundView.setVisibility(visibility);
            if (z) {
                ChangeBounds changeBounds = new ChangeBounds();
                changeBounds.addListener(new AnonymousClass6());
                this.mRootView.clearAnimation();
                TransitionManager.beginDelayedTransition(this.mRootView, changeBounds);
            } else {
                TransitionManager.endTransitions(this.mRootView);
            }
        }
        FrameLayout frameLayout = this.mSelectedViewHeader;
        if (!z2) {
            i = 8;
        }
        frameLayout.setVisibility(i);
    }

    public final void removeSelectItemInCategory(CategoryAppData categoryAppData) {
        ArrayList arrayList = new ArrayList();
        Iterator it = categoryAppData.appInfoDataList.iterator();
        while (it.hasNext()) {
            AppInfoData appInfoData = this.mCheckStateManager.get(((AppInfoData) it.next()).getAppInfo());
            if (appInfoData != null) {
                CheckStateManager checkStateManager = this.mCheckStateManager;
                AppInfo appInfo = appInfoData.getAppInfo();
                LinkedHashMap linkedHashMap = checkStateManager.mCheckedMap;
                if (linkedHashMap.containsKey(appInfo)) {
                    linkedHashMap.remove(appInfo);
                }
                LinkedHashMap linkedHashMap2 = checkStateManager.mFixedAppMap;
                if (linkedHashMap2.containsKey(appInfo)) {
                    linkedHashMap2.remove(appInfo);
                }
                arrayList.add(appInfoData);
            }
        }
    }

    public final boolean shouldCheckHeaderVisibility() {
        Context context = getContext();
        Boolean bool = Boolean.FALSE;
        if (context instanceof Activity) {
            bool = Boolean.valueOf(((Activity) context).isInMultiWindowMode());
        }
        try {
            Configuration configuration = getResources().getConfiguration();
            bool = Boolean.valueOf(configuration.semIsPopOver() | bool.booleanValue());
        } catch (NoSuchMethodError unused) {
            LogTagHelperKt.warn(this, "Failed to call semIsPopOver");
        }
        return bool.booleanValue();
    }

    public final void updateCheckedAppList(CategoryAppData categoryAppData) {
        if (categoryAppData.getSelected()) {
            removeSelectItemInCategory(categoryAppData);
            addCheckedItem(new AppData.GridRemoveAppDataBuilder(categoryAppData.appInfo).setIcon(DrawableHelperKt.newMutateDrawable(categoryAppData.icon)).setLabel(categoryAppData.label).build());
            return;
        }
        for (AppInfoData appInfoData : categoryAppData.appInfoDataList) {
            if (appInfoData.getSelected()) {
                addCheckedItem(convertCheckBox2Remove(appInfoData));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0032, code lost:
    
        if (r0 != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateHeaderVisibility() {
        /*
            r4 = this;
            android.content.res.Resources r0 = r4.getResources()
            android.content.res.Configuration r0 = r0.getConfiguration()
            boolean r1 = r4.mShouldCheckHeaderVisibility
            r2 = 1
            if (r1 == 0) goto L34
            int r0 = r0.orientation
            int r0 = r4.convertOrientation(r0)
            r1 = 2
            if (r0 == r1) goto L34
            int r0 = r4.getHeight()
            int r1 = r4.mHeaderHeight
            int r0 = r0 - r1
            int r1 = r4.mSelectedViewTitleHeight
            int r0 = r0 - r1
            int r1 = r4.mSelectedViewHeight
            int r0 = r0 - r1
            android.widget.TextView r1 = r4.mMainViewTitleView
            int r1 = r1.getHeight()
            int r0 = r0 - r1
            int r1 = r4.mListItemHeight
            r3 = 0
            if (r0 <= r1) goto L31
            r0 = r2
            goto L32
        L31:
            r0 = r3
        L32:
            if (r0 == 0) goto L35
        L34:
            r3 = r2
        L35:
            boolean r0 = r4.mHeaderVisibility
            if (r0 == r3) goto L43
            r4.mHeaderVisibility = r3
            androidx.picker.widget.SeslAppPickerSelectLayout$$ExternalSyntheticLambda0 r0 = new androidx.picker.widget.SeslAppPickerSelectLayout$$ExternalSyntheticLambda0
            r0.<init>(r4, r2)
            r4.post(r0)
        L43:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.widget.SeslAppPickerSelectLayout.updateHeaderVisibility():void");
    }

    public final void updateLayout() {
        LinearLayoutManager linearLayoutManager;
        int convertOrientation = convertOrientation(getResources().getConfiguration().orientation);
        this.mSelectedListView.clearItemDecoration();
        if (convertOrientation == 1) {
            this.mSelectedListView.getLayoutParams().height = -2;
            this.mSelectedListView.addItemDecoration(new SelectedHorizontalItemDecoration());
        } else {
            this.mSelectedListView.getLayoutParams().height = 0;
            this.mSelectedListView.addItemDecoration(new SelectedVerticallItemDecoration(getResources().getDimensionPixelOffset(R.dimen.picker_app_selected_item_view_interval_vertical_on_land)));
        }
        this.mSelectedListView.addItemDecoration(new RecyclerViewCornerDecoration(getContext()));
        this.mSelectedListView.seslSetFillBottomEnabled(false);
        SeslAppPickerGridView seslAppPickerGridView = this.mSelectedListView;
        if (convertOrientation == 1) {
            LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(getContext());
            linearLayoutManager2.setOrientation(0);
            linearLayoutManager = linearLayoutManager2;
        } else {
            final AutoFitGridLayoutManager autoFitGridLayoutManager = new AutoFitGridLayoutManager(getContext());
            final SeslAppPickerGridView seslAppPickerGridView2 = this.mSelectedListView;
            autoFitGridLayoutManager.mSpanSizeLookup = new GridLayoutManager.SpanSizeLookup(this) { // from class: androidx.picker.widget.SeslAppPickerSelectLayout.7
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public final int getSpanSize(int i) {
                    SeslAppPickerGridView seslAppPickerGridView3 = seslAppPickerGridView2;
                    HeaderFooterAdapter headerFooterAdapter = ((SeslAppPickerView) seslAppPickerGridView3).mAdapter;
                    if (headerFooterAdapter != null && i >= 0 && i < headerFooterAdapter.getItemCount()) {
                        ViewData item = ((SeslAppPickerView) seslAppPickerGridView3).mAdapter.getItem(i);
                        boolean z = item instanceof SpanData;
                        GridLayoutManager gridLayoutManager = autoFitGridLayoutManager;
                        if (z) {
                            int spanCount = ((SpanData) item).getSpanCount();
                            if (spanCount == -1) {
                                return gridLayoutManager.mSpanCount;
                            }
                            return spanCount;
                        }
                        return gridLayoutManager.mSpanCount;
                    }
                    return 1;
                }
            };
            linearLayoutManager = autoFitGridLayoutManager;
        }
        seslAppPickerGridView.setLayoutManager(linearLayoutManager);
        refreshSelectedAppPickerView(false);
    }

    public SeslAppPickerSelectLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SeslAppPickerSelectLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0068, code lost:
    
        if (r6 == 0) goto L21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0169  */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.util.AttributeSet] */
    /* JADX WARN: Type inference failed for: r6v17, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v18, types: [android.content.res.TypedArray] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SeslAppPickerSelectLayout(final android.content.Context r5, android.util.AttributeSet r6, int r7, int r8) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.picker.widget.SeslAppPickerSelectLayout.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: androidx.picker.widget.SeslAppPickerSelectLayout$6, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass6 implements Transition.TransitionListener {
        public SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0 rollback = null;

        public AnonymousClass6() {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionEnd(Transition transition) {
            SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0 seslAppPickerSelectLayout$6$$ExternalSyntheticLambda0 = this.rollback;
            if (seslAppPickerSelectLayout$6$$ExternalSyntheticLambda0 != null) {
                seslAppPickerSelectLayout$6$$ExternalSyntheticLambda0.run();
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionStart(Transition transition) {
            SeslAppPickerSelectLayout seslAppPickerSelectLayout = SeslAppPickerSelectLayout.this;
            RecyclerView.ItemAnimator itemAnimator = seslAppPickerSelectLayout.mSelectedListView.mItemAnimator;
            if (itemAnimator != null) {
                LogTagHelperKt.debug(seslAppPickerSelectLayout, "setItemAnimator = null");
                SeslAppPickerSelectLayout.this.mSelectedListView.clearAnimation();
                SeslAppPickerSelectLayout.this.mSelectedListView.setItemAnimator(null);
                this.rollback = new SeslAppPickerSelectLayout$6$$ExternalSyntheticLambda0(this, itemAnimator);
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionCancel(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionPause(Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public final void onTransitionResume(Transition transition) {
        }
    }
}
