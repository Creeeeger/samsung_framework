package com.android.framework.protobuf;

/* loaded from: classes4.dex */
interface MutabilityOracle {
    public static final MutabilityOracle IMMUTABLE = new MutabilityOracle() { // from class: com.android.framework.protobuf.MutabilityOracle.1
        AnonymousClass1() {
        }

        @Override // com.android.framework.protobuf.MutabilityOracle
        public void ensureMutable() {
            throw new UnsupportedOperationException();
        }
    };

    void ensureMutable();

    /* renamed from: com.android.framework.protobuf.MutabilityOracle$1 */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements MutabilityOracle {
        AnonymousClass1() {
        }

        @Override // com.android.framework.protobuf.MutabilityOracle
        public void ensureMutable() {
            throw new UnsupportedOperationException();
        }
    }
}
