package androidx.picker.controller.strategy;

import androidx.picker.model.AppInfoData;
import androidx.picker.repository.ViewDataRepository;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public /* synthetic */ class SingleSelectStrategy$convertAppInfoDataTask$1 extends FunctionReferenceImpl implements Function1 {
    public SingleSelectStrategy$convertAppInfoDataTask$1(Object obj) {
        super(1, obj, ViewDataRepository.class, "createAppInfoViewData", "createAppInfoViewData(Landroidx/picker/model/AppInfoData;)Landroidx/picker/model/viewdata/AppInfoViewData;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((ViewDataRepository) this.receiver).createAppInfoViewData((AppInfoData) obj);
    }
}
