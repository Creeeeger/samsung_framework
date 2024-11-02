package androidx.picker.loader.select;

import androidx.picker.model.AppData;
import androidx.picker.model.AppInfo;
import androidx.picker.model.AppInfoData;
import androidx.picker.model.appdata.CategoryAppData;
import androidx.picker.model.appdata.GroupAppData;
import androidx.picker.widget.SeslAppPickerSelectLayout;
import androidx.picker.widget.SeslAppPickerSelectLayout$5$$ExternalSyntheticLambda0;
import androidx.picker.widget.SeslAppPickerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SelectStateLoader {
    public AllAppsSelectableItem allAppsSelectableItem;
    public final Map categorySelectableItemMap = new LinkedHashMap();
    public SeslAppPickerView.AnonymousClass3 onSelectListener;

    public final AllAppsSelectableItem createAllAppsSelectableItem(List list) {
        AllAppsSelectableItem allAppsSelectableItem = this.allAppsSelectableItem;
        if (allAppsSelectableItem != null) {
            allAppsSelectableItem.dispose();
        }
        AllAppsSelectableItem allAppsSelectableItem2 = new AllAppsSelectableItem(list, new Function1() { // from class: androidx.picker.loader.select.SelectStateLoader$createAllAppsSelectableItem$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SeslAppPickerSelectLayout.AnonymousClass5 anonymousClass5;
                List<AppData> list2;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                SeslAppPickerView.AnonymousClass3 anonymousClass3 = SelectStateLoader.this.onSelectListener;
                if (anonymousClass3 != null && (anonymousClass5 = SeslAppPickerView.this.mOnStateChangeListener) != null) {
                    SeslAppPickerSelectLayout seslAppPickerSelectLayout = SeslAppPickerSelectLayout.this;
                    SeslAppPickerSelectLayout.CheckStateManager checkStateManager = seslAppPickerSelectLayout.mCheckStateManager;
                    checkStateManager.getClass();
                    LinkedHashMap linkedHashMap = checkStateManager.mCheckedMap;
                    Iterator it = new ArrayList(linkedHashMap.values()).iterator();
                    while (it.hasNext()) {
                        AppInfoData appInfoData = (AppInfoData) it.next();
                        if (!appInfoData.getDimmed()) {
                            linkedHashMap.remove(appInfoData.getAppInfo());
                        }
                    }
                    if (booleanValue && (list2 = seslAppPickerSelectLayout.mAppPickerStateView.mViewDataController.appDataList) != null) {
                        for (AppData appData : list2) {
                            if (appData instanceof AppInfoData) {
                                AppInfoData appInfoData2 = (AppInfoData) appData;
                                if (appInfoData2.getSelected()) {
                                    seslAppPickerSelectLayout.addCheckedItem(SeslAppPickerSelectLayout.convertCheckBox2Remove(appInfoData2));
                                }
                            } else if (appData instanceof CategoryAppData) {
                                seslAppPickerSelectLayout.updateCheckedAppList((CategoryAppData) appData);
                            } else if (appData instanceof GroupAppData) {
                                for (AppData appData2 : ((GroupAppData) appData).appDataList) {
                                    if (appData2 instanceof AppInfoData) {
                                        AppInfoData appInfoData3 = (AppInfoData) appData2;
                                        if (appInfoData3.getSelected()) {
                                            seslAppPickerSelectLayout.addCheckedItem(SeslAppPickerSelectLayout.convertCheckBox2Remove(appInfoData3));
                                        }
                                    } else if (appData2 instanceof CategoryAppData) {
                                        seslAppPickerSelectLayout.updateCheckedAppList((CategoryAppData) appData2);
                                    }
                                }
                            }
                        }
                    }
                }
                return Unit.INSTANCE;
            }
        });
        AllAppsSelectableItem allAppsSelectableItem3 = this.allAppsSelectableItem;
        if (allAppsSelectableItem3 != null) {
            allAppsSelectableItem3.dispose();
        }
        this.allAppsSelectableItem = allAppsSelectableItem2;
        return allAppsSelectableItem2;
    }

    public final CategorySelectableItem createCategorySelectableItem(final CategoryAppData categoryAppData, List list) {
        CategorySelectableItem categorySelectableItem = new CategorySelectableItem(list, new Function1() { // from class: androidx.picker.loader.select.SelectStateLoader$createCategorySelectableItem$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AppInfoData appInfoData;
                boolean z;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                SeslAppPickerView.AnonymousClass3 anonymousClass3 = SelectStateLoader.this.onSelectListener;
                if (anonymousClass3 != null) {
                    AppInfo appInfo = categoryAppData.appInfo;
                    SeslAppPickerSelectLayout.AnonymousClass5 anonymousClass5 = SeslAppPickerView.this.mOnStateChangeListener;
                    if (anonymousClass5 != null) {
                        SeslAppPickerSelectLayout seslAppPickerSelectLayout = SeslAppPickerSelectLayout.this;
                        if (booleanValue) {
                            SeslAppPickerSelectLayout.CheckStateManager checkStateManager = seslAppPickerSelectLayout.mCheckStateManager;
                            if (checkStateManager.mCheckedMap.containsKey(appInfo) || checkStateManager.mFixedAppMap.containsKey(appInfo)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!z) {
                                AppData appData = seslAppPickerSelectLayout.mAppPickerStateView.getAppData(appInfo);
                                List categoryAppDataList = SeslAppPickerSelectLayout.getCategoryAppDataList(seslAppPickerSelectLayout.mAppPickerStateView.mViewDataController.appDataList);
                                if (appData instanceof AppInfoData) {
                                    CategoryAppData categoryAppDataContainsAppInfo = SeslAppPickerSelectLayout.getCategoryAppDataContainsAppInfo(categoryAppDataList, appInfo);
                                    if (categoryAppDataContainsAppInfo != null && categoryAppDataContainsAppInfo.getSelected()) {
                                        seslAppPickerSelectLayout.addSelectItem(categoryAppDataContainsAppInfo);
                                    } else {
                                        AppInfoData convertCheckBox2Remove = SeslAppPickerSelectLayout.convertCheckBox2Remove((AppInfoData) appData);
                                        seslAppPickerSelectLayout.addCheckedItem(convertCheckBox2Remove);
                                        Arrays.asList(convertCheckBox2Remove);
                                    }
                                } else if (appData instanceof CategoryAppData) {
                                    seslAppPickerSelectLayout.addSelectItem((CategoryAppData) appData);
                                }
                            }
                        } else {
                            AppInfoData appInfoData2 = seslAppPickerSelectLayout.mCheckStateManager.get(appInfo);
                            List categoryAppDataList2 = SeslAppPickerSelectLayout.getCategoryAppDataList(seslAppPickerSelectLayout.mAppPickerStateView.mViewDataController.appDataList);
                            if (appInfoData2 == null) {
                                CategoryAppData categoryAppDataContainsAppInfo2 = SeslAppPickerSelectLayout.getCategoryAppDataContainsAppInfo(categoryAppDataList2, appInfo);
                                if (categoryAppDataContainsAppInfo2 != null && (appInfoData = seslAppPickerSelectLayout.mCheckStateManager.get(categoryAppDataContainsAppInfo2.appInfo)) != null) {
                                    SeslAppPickerSelectLayout.CheckStateManager checkStateManager2 = seslAppPickerSelectLayout.mCheckStateManager;
                                    AppInfo appInfo2 = appInfoData.getAppInfo();
                                    LinkedHashMap linkedHashMap = checkStateManager2.mCheckedMap;
                                    if (linkedHashMap.containsKey(appInfo2)) {
                                        linkedHashMap.remove(appInfo2);
                                    }
                                    LinkedHashMap linkedHashMap2 = checkStateManager2.mFixedAppMap;
                                    if (linkedHashMap2.containsKey(appInfo2)) {
                                        linkedHashMap2.remove(appInfo2);
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    for (AppInfoData appInfoData3 : categoryAppDataContainsAppInfo2.appInfoDataList) {
                                        if (appInfoData3.getSelected()) {
                                            AppInfoData convertCheckBox2Remove2 = SeslAppPickerSelectLayout.convertCheckBox2Remove(appInfoData3);
                                            seslAppPickerSelectLayout.addCheckedItem(convertCheckBox2Remove2);
                                            arrayList.add(convertCheckBox2Remove2);
                                        }
                                    }
                                }
                            } else {
                                SeslAppPickerSelectLayout.CheckStateManager checkStateManager3 = seslAppPickerSelectLayout.mCheckStateManager;
                                AppInfo appInfo3 = appInfoData2.getAppInfo();
                                LinkedHashMap linkedHashMap3 = checkStateManager3.mCheckedMap;
                                if (linkedHashMap3.containsKey(appInfo3)) {
                                    linkedHashMap3.remove(appInfo3);
                                }
                                LinkedHashMap linkedHashMap4 = checkStateManager3.mFixedAppMap;
                                if (linkedHashMap4.containsKey(appInfo3)) {
                                    linkedHashMap4.remove(appInfo3);
                                }
                            }
                        }
                        seslAppPickerSelectLayout.post(new SeslAppPickerSelectLayout$5$$ExternalSyntheticLambda0(anonymousClass5));
                    }
                }
                return Unit.INSTANCE;
            }
        });
        Map map = this.categorySelectableItemMap;
        AppInfo appInfo = categoryAppData.appInfo;
        CategorySelectableItem categorySelectableItem2 = (CategorySelectableItem) ((LinkedHashMap) map).get(appInfo);
        if (categorySelectableItem2 != null) {
            categorySelectableItem2.dispose();
        }
        map.put(appInfo, categorySelectableItem);
        return categorySelectableItem;
    }

    public final AppDataSelectableItem createSelectableItem(AppInfoData appInfoData) {
        final AppInfo appInfo = appInfoData.getAppInfo();
        return new AppDataSelectableItem(appInfoData, new Function1() { // from class: androidx.picker.loader.select.SelectStateLoader$createSelectableItem$newSelectable$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AppInfoData appInfoData2;
                boolean z;
                boolean booleanValue = ((Boolean) obj).booleanValue();
                SeslAppPickerView.AnonymousClass3 anonymousClass3 = SelectStateLoader.this.onSelectListener;
                if (anonymousClass3 != null) {
                    AppInfo appInfo2 = appInfo;
                    SeslAppPickerSelectLayout.AnonymousClass5 anonymousClass5 = SeslAppPickerView.this.mOnStateChangeListener;
                    if (anonymousClass5 != null) {
                        SeslAppPickerSelectLayout seslAppPickerSelectLayout = SeslAppPickerSelectLayout.this;
                        if (booleanValue) {
                            SeslAppPickerSelectLayout.CheckStateManager checkStateManager = seslAppPickerSelectLayout.mCheckStateManager;
                            if (checkStateManager.mCheckedMap.containsKey(appInfo2) || checkStateManager.mFixedAppMap.containsKey(appInfo2)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!z) {
                                AppData appData = seslAppPickerSelectLayout.mAppPickerStateView.getAppData(appInfo2);
                                List categoryAppDataList = SeslAppPickerSelectLayout.getCategoryAppDataList(seslAppPickerSelectLayout.mAppPickerStateView.mViewDataController.appDataList);
                                if (appData instanceof AppInfoData) {
                                    CategoryAppData categoryAppDataContainsAppInfo = SeslAppPickerSelectLayout.getCategoryAppDataContainsAppInfo(categoryAppDataList, appInfo2);
                                    if (categoryAppDataContainsAppInfo != null && categoryAppDataContainsAppInfo.getSelected()) {
                                        seslAppPickerSelectLayout.addSelectItem(categoryAppDataContainsAppInfo);
                                    } else {
                                        AppInfoData convertCheckBox2Remove = SeslAppPickerSelectLayout.convertCheckBox2Remove((AppInfoData) appData);
                                        seslAppPickerSelectLayout.addCheckedItem(convertCheckBox2Remove);
                                        Arrays.asList(convertCheckBox2Remove);
                                    }
                                } else if (appData instanceof CategoryAppData) {
                                    seslAppPickerSelectLayout.addSelectItem((CategoryAppData) appData);
                                }
                            }
                        } else {
                            AppInfoData appInfoData3 = seslAppPickerSelectLayout.mCheckStateManager.get(appInfo2);
                            List categoryAppDataList2 = SeslAppPickerSelectLayout.getCategoryAppDataList(seslAppPickerSelectLayout.mAppPickerStateView.mViewDataController.appDataList);
                            if (appInfoData3 == null) {
                                CategoryAppData categoryAppDataContainsAppInfo2 = SeslAppPickerSelectLayout.getCategoryAppDataContainsAppInfo(categoryAppDataList2, appInfo2);
                                if (categoryAppDataContainsAppInfo2 != null && (appInfoData2 = seslAppPickerSelectLayout.mCheckStateManager.get(categoryAppDataContainsAppInfo2.appInfo)) != null) {
                                    SeslAppPickerSelectLayout.CheckStateManager checkStateManager2 = seslAppPickerSelectLayout.mCheckStateManager;
                                    AppInfo appInfo3 = appInfoData2.getAppInfo();
                                    LinkedHashMap linkedHashMap = checkStateManager2.mCheckedMap;
                                    if (linkedHashMap.containsKey(appInfo3)) {
                                        linkedHashMap.remove(appInfo3);
                                    }
                                    LinkedHashMap linkedHashMap2 = checkStateManager2.mFixedAppMap;
                                    if (linkedHashMap2.containsKey(appInfo3)) {
                                        linkedHashMap2.remove(appInfo3);
                                    }
                                    ArrayList arrayList = new ArrayList();
                                    for (AppInfoData appInfoData4 : categoryAppDataContainsAppInfo2.appInfoDataList) {
                                        if (appInfoData4.getSelected()) {
                                            AppInfoData convertCheckBox2Remove2 = SeslAppPickerSelectLayout.convertCheckBox2Remove(appInfoData4);
                                            seslAppPickerSelectLayout.addCheckedItem(convertCheckBox2Remove2);
                                            arrayList.add(convertCheckBox2Remove2);
                                        }
                                    }
                                }
                            } else {
                                SeslAppPickerSelectLayout.CheckStateManager checkStateManager3 = seslAppPickerSelectLayout.mCheckStateManager;
                                AppInfo appInfo4 = appInfoData3.getAppInfo();
                                LinkedHashMap linkedHashMap3 = checkStateManager3.mCheckedMap;
                                if (linkedHashMap3.containsKey(appInfo4)) {
                                    linkedHashMap3.remove(appInfo4);
                                }
                                LinkedHashMap linkedHashMap4 = checkStateManager3.mFixedAppMap;
                                if (linkedHashMap4.containsKey(appInfo4)) {
                                    linkedHashMap4.remove(appInfo4);
                                }
                            }
                        }
                        seslAppPickerSelectLayout.post(new SeslAppPickerSelectLayout$5$$ExternalSyntheticLambda0(anonymousClass5));
                    }
                }
                return Unit.INSTANCE;
            }
        });
    }
}
