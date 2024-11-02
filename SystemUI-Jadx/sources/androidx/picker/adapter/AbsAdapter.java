package androidx.picker.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.SectionIndexer;
import androidx.core.util.Supplier;
import androidx.picker.adapter.viewholder.AppListItemViewHolder;
import androidx.picker.adapter.viewholder.PickerViewHolder;
import androidx.picker.common.log.LogTag;
import androidx.picker.features.composable.ActionableComposableViewHolder;
import androidx.picker.features.search.InitialSearchUtils;
import androidx.picker.loader.select.SelectableItem;
import androidx.picker.model.AppData;
import androidx.picker.model.AppInfo;
import androidx.picker.model.AppInfoData;
import androidx.picker.model.Selectable;
import androidx.picker.model.appdata.GroupAppData;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.model.viewdata.AppSideViewData;
import androidx.picker.model.viewdata.GroupTitleViewData;
import androidx.picker.model.viewdata.SearchableViewData;
import androidx.picker.model.viewdata.ViewData;
import androidx.picker.widget.SeslAppPickerSelectLayout;
import androidx.picker.widget.SeslAppPickerView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsJvmKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AbsAdapter extends RecyclerView.Adapter implements Filterable, SectionIndexer, LogTag {
    public final Context mContext;
    public AppPickerAdapter$OnBindListener mOnBindListener;
    public int[] mPositionToSectionIndex;
    public final List mDataSet = new ArrayList();
    public final List mDataSetFiltered = new ArrayList();
    public final Map mSectionMap = new HashMap();
    public String[] mSections = new String[0];
    public String mSearchText = "";
    public AnonymousClass1 mFilter = null;

    public AbsAdapter(Context context) {
        this.mContext = context;
    }

    public static GroupTitleViewData generateFilterHeader(String str, List list) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            arrayList.add(((AppSideViewData) it.next()).getAppData());
        }
        AppData.GroupAppDataBuilder groupAppDataBuilder = new AppData.GroupAppDataBuilder(str);
        groupAppDataBuilder.label = str;
        groupAppDataBuilder.mAppInfoDataList = arrayList;
        AppInfo.Companion.getClass();
        String str2 = groupAppDataBuilder.key;
        AppInfo appInfo = new AppInfo(str2, "", 0);
        String str3 = groupAppDataBuilder.label;
        if (str3 != null) {
            str2 = str3;
        }
        GroupAppData groupAppData = new GroupAppData(appInfo, str2, (List<? extends AppData>) groupAppDataBuilder.mAppInfoDataList);
        return new GroupTitleViewData(groupAppData, String.valueOf(groupAppData.appDataList.size()));
    }

    public static View inflate(RecyclerView recyclerView, int i) {
        return LayoutInflater.from(recyclerView.getContext()).inflate(i, (ViewGroup) recyclerView, false);
    }

    public final List getAppInfoFilterResult(List list, List list2) {
        boolean z;
        Boolean bool;
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            SearchableViewData searchableViewData = (SearchableViewData) it.next();
            Iterator it2 = searchableViewData.getSearchable().iterator();
            while (true) {
                if (it2.hasNext()) {
                    String str = (String) it2.next();
                    String str2 = this.mSearchText;
                    if (TextUtils.isEmpty(str)) {
                        bool = Boolean.FALSE;
                    } else {
                        StringTokenizer stringTokenizer = new StringTokenizer(str2.toLowerCase());
                        String replace = str.toLowerCase().trim().replace(" ", "");
                        while (true) {
                            if (stringTokenizer.hasMoreTokens()) {
                                if (replace.contains(stringTokenizer.nextToken())) {
                                    bool = Boolean.TRUE;
                                    break;
                                }
                                if (InitialSearchUtils.getMatchedStringOffset(replace, this.mSearchText.trim().replace(" ", "")) > -1) {
                                    bool = Boolean.TRUE;
                                    break;
                                }
                            } else {
                                bool = Boolean.FALSE;
                                break;
                            }
                        }
                    }
                    if (bool.booleanValue()) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z && (searchableViewData.getKey() instanceof AppInfo)) {
                z = ((ArrayList) list2).contains((AppInfo) searchableViewData.getKey());
            }
            if (z) {
                arrayList.add(searchableViewData);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.widget.Filter, androidx.picker.adapter.AbsAdapter$1] */
    @Override // android.widget.Filterable
    public final Filter getFilter() {
        AnonymousClass1 anonymousClass1 = this.mFilter;
        if (anonymousClass1 != null) {
            return anonymousClass1;
        }
        ?? r0 = new Filter() { // from class: androidx.picker.adapter.AbsAdapter.1
            /* JADX WARN: Code restructure failed: missing block: B:31:0x0094, code lost:
            
                if (r15 != null) goto L34;
             */
            @Override // android.widget.Filter
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final android.widget.Filter.FilterResults performFiltering(java.lang.CharSequence r15) {
                /*
                    Method dump skipped, instructions count: 491
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.picker.adapter.AbsAdapter.AnonymousClass1.performFiltering(java.lang.CharSequence):android.widget.Filter$FilterResults");
            }

            @Override // android.widget.Filter
            public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ArrayList arrayList = (ArrayList) filterResults.values;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ViewData viewData = (ViewData) it.next();
                    if (viewData instanceof AppInfoViewData) {
                        ((AppInfoViewData) viewData).highlightText.setValue(AbsAdapter.this.mSearchText);
                    }
                }
                AbsAdapter absAdapter = AbsAdapter.this;
                DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffUtilCallback(absAdapter.mDataSetFiltered, arrayList));
                ((ArrayList) absAdapter.mDataSetFiltered).clear();
                ((ArrayList) absAdapter.mDataSetFiltered).addAll(arrayList);
                calculateDiff.dispatchUpdatesTo(new NearbyListUpdateCallback(absAdapter));
                AbsAdapter.this.getClass();
            }
        };
        this.mFilter = r0;
        return r0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return ((ArrayList) this.mDataSetFiltered).size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return ((ViewData) ((ArrayList) this.mDataSetFiltered).get(i)).getKey().hashCode();
    }

    @Override // androidx.picker.common.log.LogTag
    public final String getLogTag() {
        return "AppPickerViewAdapter";
    }

    @Override // android.widget.SectionIndexer
    public final int getPositionForSection(int i) {
        String[] strArr = this.mSections;
        if (i >= strArr.length) {
            return 0;
        }
        Integer num = (Integer) ((HashMap) this.mSectionMap).get(strArr[i]);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // android.widget.SectionIndexer
    public final int getSectionForPosition(int i) {
        int[] iArr = this.mPositionToSectionIndex;
        if (i >= iArr.length) {
            return 0;
        }
        return iArr[i];
    }

    @Override // android.widget.SectionIndexer
    public final Object[] getSections() {
        return this.mSections;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        PickerViewHolder pickerViewHolder = (PickerViewHolder) viewHolder;
        if (list.isEmpty()) {
            onBindViewHolder((RecyclerView.ViewHolder) pickerViewHolder, i);
        } else {
            onBindViewHolder(pickerViewHolder, i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(final PickerViewHolder pickerViewHolder, int i) {
        final ViewData viewData = (ViewData) ((ArrayList) this.mDataSetFiltered).get(i);
        AppPickerAdapter$OnBindListener appPickerAdapter$OnBindListener = this.mOnBindListener;
        if (appPickerAdapter$OnBindListener != null) {
            final SeslAppPickerView seslAppPickerView = (SeslAppPickerView) appPickerAdapter$OnBindListener;
            if (seslAppPickerView.mOnClickEventListener != null && (viewData instanceof AppInfoViewData)) {
                pickerViewHolder.item.setOnClickListener(new View.OnClickListener() { // from class: androidx.picker.widget.SeslAppPickerView$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        boolean z;
                        Object obj;
                        boolean z2;
                        SelectableItem selectableItem;
                        SeslAppPickerView seslAppPickerView2 = SeslAppPickerView.this;
                        ViewData viewData2 = viewData;
                        PickerViewHolder pickerViewHolder2 = pickerViewHolder;
                        seslAppPickerView2.getClass();
                        AppData appData = seslAppPickerView2.getAppData(((AppInfoViewData) viewData2).getAppInfo());
                        if (appData != null) {
                            SeslAppPickerSelectLayout$$ExternalSyntheticLambda2 seslAppPickerSelectLayout$$ExternalSyntheticLambda2 = seslAppPickerView2.mOnClickEventListener;
                            if (seslAppPickerSelectLayout$$ExternalSyntheticLambda2 != null) {
                                AppInfo appInfo = appData.getAppInfo();
                                SeslAppPickerSelectLayout seslAppPickerSelectLayout = seslAppPickerSelectLayout$$ExternalSyntheticLambda2.f$0;
                                SeslAppPickerSelectLayout.CheckStateManager checkStateManager = seslAppPickerSelectLayout.mCheckStateManager;
                                checkStateManager.getClass();
                                ArrayList arrayList = new ArrayList();
                                arrayList.addAll(checkStateManager.mFixedAppMap.values());
                                arrayList.addAll(checkStateManager.mCheckedMap.values());
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    AppInfoData appInfoData = (AppInfoData) it.next();
                                    if (appInfoData.getAppInfo().equals(appInfo)) {
                                        ViewData viewData3 = seslAppPickerSelectLayout.mAppPickerStateView.mViewDataController.getViewData(appInfo);
                                        if ((viewData3 instanceof Selectable) && (selectableItem = ((Selectable) viewData3).getSelectableItem()) != null) {
                                            selectableItem.setValue(Boolean.FALSE);
                                        }
                                        Context context = seslAppPickerSelectLayout$$ExternalSyntheticLambda2.f$1;
                                        if (((AccessibilityManager) context.getSystemService("accessibility")).isEnabled()) {
                                            seslAppPickerSelectLayout.mSelectedListView.announceForAccessibility(String.format(context.getResources().getText(R.string.select_layout_unchecked_selected_app).toString(), appInfoData.getLabel()));
                                            return;
                                        }
                                        return;
                                    }
                                }
                                return;
                            }
                            if (pickerViewHolder2 instanceof AppListItemViewHolder) {
                                Iterator it2 = ((ArrayList) CollectionsKt___CollectionsJvmKt.filterIsInstance(((AppListItemViewHolder) pickerViewHolder2).composableItemViewHolderList, ActionableComposableViewHolder.class)).iterator();
                                while (true) {
                                    z = false;
                                    if (it2.hasNext()) {
                                        obj = it2.next();
                                        Supplier doAction = ((ActionableComposableViewHolder) obj).getDoAction();
                                        if (doAction != null) {
                                            z2 = Intrinsics.areEqual(doAction.get(), Boolean.TRUE);
                                        } else {
                                            z2 = false;
                                        }
                                        if (z2) {
                                            break;
                                        }
                                    } else {
                                        obj = null;
                                        break;
                                    }
                                }
                                if (((ActionableComposableViewHolder) obj) != null) {
                                    z = true;
                                }
                                if (z) {
                                    return;
                                }
                            }
                            if (seslAppPickerView2.mOnClickEventListener == null) {
                                seslAppPickerView2.setOnClickListener(null);
                            }
                        }
                    }
                });
            }
        }
        pickerViewHolder.bindData(viewData);
        pickerViewHolder.bindAdapter(this);
    }
}
