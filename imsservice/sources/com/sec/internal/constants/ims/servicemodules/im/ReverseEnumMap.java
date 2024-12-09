package com.sec.internal.constants.ims.servicemodules.im;

import android.util.SparseArray;
import com.sec.internal.constants.ims.servicemodules.im.IEnumerationWithId;
import com.sec.internal.ims.servicemodules.tapi.service.extension.utils.Constants;
import java.lang.Enum;

/* loaded from: classes.dex */
public class ReverseEnumMap<E extends Enum<E> & IEnumerationWithId<E>> {
    private final SparseArray<E> map = new SparseArray<>();

    public ReverseEnumMap(Class<E> cls) {
        if (cls.getEnumConstants() == null) {
            throw new IllegalStateException("Trying to make ReverseEnumMap with non-enum class: " + cls);
        }
        for (Object obj : (Enum[]) cls.getEnumConstants()) {
            IEnumerationWithId iEnumerationWithId = (IEnumerationWithId) obj;
            Enum r3 = (Enum) this.map.get(iEnumerationWithId.getId());
            if (r3 != null) {
                throw new IllegalStateException(Constants.ID + iEnumerationWithId.getId() + " already set to constant " + r3.name());
            }
            this.map.put(iEnumerationWithId.getId(), obj);
        }
    }

    /* JADX WARN: Incorrect return type in method signature: (Ljava/lang/Integer;)TE; */
    public Enum get(Integer num) {
        Enum r2 = (Enum) this.map.get(num.intValue());
        if (r2 != null) {
            return r2;
        }
        throw new IllegalArgumentException("Id " + num + " unknown in reverse enumeration map");
    }
}
