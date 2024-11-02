package androidx.picker.controller.strategy;

import androidx.picker.loader.select.SelectableItem;
import androidx.picker.model.viewdata.AllAppsViewData;
import androidx.picker.model.viewdata.AppInfoViewData;
import androidx.picker.repository.ViewDataRepository;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class AllSelectStrategy$addAllAppsTask$1 extends FunctionReferenceImpl implements Function1 {
    public AllSelectStrategy$addAllAppsTask$1(Object obj) {
        super(1, obj, ViewDataRepository.class, "createAllAppsViewData", "createAllAppsViewData(Ljava/util/List;)Landroidx/picker/model/viewdata/AllAppsViewData;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ViewDataRepository viewDataRepository = (ViewDataRepository) this.receiver;
        viewDataRepository.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = ((List) obj).iterator();
        while (it.hasNext()) {
            SelectableItem selectableItem = ((AppInfoViewData) it.next()).selectableItem;
            if (selectableItem != null) {
                arrayList.add(selectableItem);
            }
        }
        return new AllAppsViewData(viewDataRepository.selectStateLoader.createAllAppsSelectableItem(arrayList));
    }
}
