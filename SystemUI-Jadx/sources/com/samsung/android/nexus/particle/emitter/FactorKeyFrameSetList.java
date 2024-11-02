package com.samsung.android.nexus.particle.emitter;

import com.samsung.android.nexus.base.utils.keyFrameSet.FloatKeyFrameSet;
import com.samsung.android.nexus.particle.emitter.FactorType;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class FactorKeyFrameSetList {
    public int floatKeyFrameSetSize;
    public final FloatKeyFrameSet[] list;

    public FactorKeyFrameSetList() {
        FactorType factorType = FactorType.WIDTH;
        this.list = new FloatKeyFrameSet[FactorType.Holder.sCount];
        this.floatKeyFrameSetSize = 0;
    }

    public void clear() {
        Arrays.fill(this.list, (Object) null);
        this.floatKeyFrameSetSize = 0;
    }

    public boolean isEmpty() {
        if (this.floatKeyFrameSetSize == 0) {
            return true;
        }
        return false;
    }

    public FactorKeyFrameSetList(FactorKeyFrameSetList factorKeyFrameSetList) {
        FactorType factorType = FactorType.WIDTH;
        FloatKeyFrameSet[] floatKeyFrameSetArr = new FloatKeyFrameSet[FactorType.Holder.sCount];
        this.list = floatKeyFrameSetArr;
        this.floatKeyFrameSetSize = 0;
        FloatKeyFrameSet[] floatKeyFrameSetArr2 = factorKeyFrameSetList.list;
        int length = floatKeyFrameSetArr2.length;
        this.floatKeyFrameSetSize = factorKeyFrameSetList.floatKeyFrameSetSize;
        System.arraycopy(floatKeyFrameSetArr2, 0, floatKeyFrameSetArr, 0, length);
    }
}
