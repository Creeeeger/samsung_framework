package com.sec.internal.ims.core.sim;

import com.sec.internal.constants.Mno;
import com.sec.internal.ims.core.sim.SimDataAdaptorFactory;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes.dex */
final class SimDataAdaptorFactory {

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class SimDataAdaptorType {
        final Mno mno;
        public static final SimDataAdaptorType TMOUS = new AnonymousClass1("TMOUS", 0, Mno.TMOUS);
        public static final SimDataAdaptorType ATT = new AnonymousClass2("ATT", 1, Mno.ATT);
        public static final SimDataAdaptorType VZW = new AnonymousClass3("VZW", 2, Mno.VZW);
        public static final SimDataAdaptorType GCF = new AnonymousClass4("GCF", 3, Mno.GCF);
        public static final SimDataAdaptorType KDDI = new AnonymousClass5("KDDI", 4, Mno.KDDI);
        public static final SimDataAdaptorType CMCC = new AnonymousClass6("CMCC", 5, Mno.CMCC);
        public static final SimDataAdaptorType SPRINT = new AnonymousClass7("SPRINT", 6, Mno.SPRINT);
        public static final SimDataAdaptorType USCC = new AnonymousClass8("USCC", 7, Mno.USCC);
        public static final SimDataAdaptorType BOG = new AnonymousClass9("BOG", 8, Mno.BOG);
        public static final SimDataAdaptorType ONENONE = new AnonymousClass10("ONENONE", 9, Mno.ONENONE);
        public static final SimDataAdaptorType TWM = new AnonymousClass11("TWM", 10, Mno.TWM);
        public static final SimDataAdaptorType LGU = new AnonymousClass12("LGU", 11, Mno.LGU);
        public static final SimDataAdaptorType BELL = new AnonymousClass13("BELL", 12, Mno.BELL);
        private static final /* synthetic */ SimDataAdaptorType[] $VALUES = $values();

        abstract SimDataAdaptor create(SimManager simManager);

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$1, reason: invalid class name */
        enum AnonymousClass1 extends SimDataAdaptorType {
            private AnonymousClass1(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorTmoUs(simManager);
            }
        }

        private static /* synthetic */ SimDataAdaptorType[] $values() {
            return new SimDataAdaptorType[]{TMOUS, ATT, VZW, GCF, KDDI, CMCC, SPRINT, USCC, BOG, ONENONE, TWM, LGU, BELL};
        }

        public static SimDataAdaptorType valueOf(String str) {
            return (SimDataAdaptorType) Enum.valueOf(SimDataAdaptorType.class, str);
        }

        public static SimDataAdaptorType[] values() {
            return (SimDataAdaptorType[]) $VALUES.clone();
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$2, reason: invalid class name */
        enum AnonymousClass2 extends SimDataAdaptorType {
            private AnonymousClass2(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorAtt(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$3, reason: invalid class name */
        enum AnonymousClass3 extends SimDataAdaptorType {
            private AnonymousClass3(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorVzw(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$4, reason: invalid class name */
        enum AnonymousClass4 extends SimDataAdaptorType {
            private AnonymousClass4(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorGcf(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$5, reason: invalid class name */
        enum AnonymousClass5 extends SimDataAdaptorType {
            private AnonymousClass5(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorKddi(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$6, reason: invalid class name */
        enum AnonymousClass6 extends SimDataAdaptorType {
            private AnonymousClass6(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorCmcc(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$7, reason: invalid class name */
        enum AnonymousClass7 extends SimDataAdaptorType {
            private AnonymousClass7(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorSpr(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$8, reason: invalid class name */
        enum AnonymousClass8 extends SimDataAdaptorType {
            private AnonymousClass8(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorUsc(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$9, reason: invalid class name */
        enum AnonymousClass9 extends SimDataAdaptorType {
            private AnonymousClass9(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorBog(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$10, reason: invalid class name */
        enum AnonymousClass10 extends SimDataAdaptorType {
            private AnonymousClass10(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorOnenone(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$11, reason: invalid class name */
        enum AnonymousClass11 extends SimDataAdaptorType {
            private AnonymousClass11(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorTwm(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$12, reason: invalid class name */
        enum AnonymousClass12 extends SimDataAdaptorType {
            private AnonymousClass12(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorLgu(simManager);
            }
        }

        /* renamed from: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$SimDataAdaptorType$13, reason: invalid class name */
        enum AnonymousClass13 extends SimDataAdaptorType {
            private AnonymousClass13(String str, int i, Mno mno) {
                super(str, i, mno);
            }

            @Override // com.sec.internal.ims.core.sim.SimDataAdaptorFactory.SimDataAdaptorType
            SimDataAdaptor create(SimManager simManager) {
                return new SimDataAdaptorBell(simManager);
            }
        }

        private SimDataAdaptorType(String str, int i, Mno mno) {
            this.mno = mno;
        }
    }

    SimDataAdaptorFactory() {
    }

    static SimDataAdaptor create(final SimManager simManager) {
        return (SimDataAdaptor) Arrays.stream(SimDataAdaptorType.values()).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$create$0;
                lambda$create$0 = SimDataAdaptorFactory.lambda$create$0(SimManager.this, (SimDataAdaptorFactory.SimDataAdaptorType) obj);
                return lambda$create$0;
            }
        }).findFirst().map(new Function() { // from class: com.sec.internal.ims.core.sim.SimDataAdaptorFactory$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                SimDataAdaptor lambda$create$1;
                lambda$create$1 = SimDataAdaptorFactory.lambda$create$1(SimManager.this, (SimDataAdaptorFactory.SimDataAdaptorType) obj);
                return lambda$create$1;
            }
        }).orElse(new SimDataAdaptorBase(simManager));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$create$0(SimManager simManager, SimDataAdaptorType simDataAdaptorType) {
        return simDataAdaptorType.mno == simManager.getSimMno();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SimDataAdaptor lambda$create$1(SimManager simManager, SimDataAdaptorType simDataAdaptorType) {
        return simDataAdaptorType.create(simManager);
    }
}
