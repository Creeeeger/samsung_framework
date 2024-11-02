package androidx.picker.controller.strategy;

import androidx.picker.model.appdata.CategoryAppData;
import androidx.picker.repository.ViewDataRepository;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class AppItemStrategy$parseAppDataTask$2 extends FunctionReferenceImpl implements Function2 {
    public AppItemStrategy$parseAppDataTask$2(Object obj) {
        super(2, obj, ViewDataRepository.class, "createCategoryViewData", "createCategoryViewData(Landroidx/picker/model/appdata/CategoryAppData;Ljava/util/List;)Landroidx/picker/model/viewdata/CategoryViewData;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ViewDataRepository) this.receiver).createCategoryViewData((CategoryAppData) obj, (List) obj2);
    }
}
