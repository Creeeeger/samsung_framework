package com.android.systemui.shared.hardware;

import android.hardware.input.InputManager;
import android.view.InputDevice;
import kotlin.collections.ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.EmptySequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public abstract class InputManagerKt {
    public static final boolean hasInputDevice(final InputManager inputManager, Function1 function1) {
        boolean z;
        Sequence arraysKt___ArraysKt$asSequence$$inlined$Sequence$4;
        int[] inputDeviceIds = inputManager.getInputDeviceIds();
        if (inputDeviceIds.length == 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            arraysKt___ArraysKt$asSequence$$inlined$Sequence$4 = EmptySequence.INSTANCE;
        } else {
            arraysKt___ArraysKt$asSequence$$inlined$Sequence$4 = new ArraysKt___ArraysKt$asSequence$$inlined$Sequence$4(inputDeviceIds);
        }
        FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(SequencesKt___SequencesKt.mapNotNull(arraysKt___ArraysKt$asSequence$$inlined$Sequence$4, new Function1() { // from class: com.android.systemui.shared.hardware.InputManagerKt$getInputDeviceSequence$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return inputManager.getInputDevice(((Number) obj).intValue());
            }
        }));
        while (filteringSequence$iterator$1.hasNext()) {
            if (((Boolean) function1.invoke((InputDevice) filteringSequence$iterator$1.next())).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
