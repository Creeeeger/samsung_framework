package android.util;

/* loaded from: classes4.dex */
public class DataUnit extends Enum<DataUnit> {
    public static final DataUnit KILOBYTES = new AnonymousClass1("KILOBYTES", 0);
    public static final DataUnit MEGABYTES = new AnonymousClass2("MEGABYTES", 1);
    public static final DataUnit GIGABYTES = new AnonymousClass3("GIGABYTES", 2);
    public static final DataUnit TERABYTES = new AnonymousClass4("TERABYTES", 3);
    public static final DataUnit KIBIBYTES = new AnonymousClass5("KIBIBYTES", 4);
    public static final DataUnit MEBIBYTES = new AnonymousClass6("MEBIBYTES", 5);
    public static final DataUnit GIBIBYTES = new AnonymousClass7("GIBIBYTES", 6);
    public static final DataUnit TEBIBYTES = new AnonymousClass8("TEBIBYTES", 7);
    private static final /* synthetic */ DataUnit[] $VALUES = $values();

    /* synthetic */ DataUnit(String str, int i, DataUnitIA dataUnitIA) {
        this(str, i);
    }

    /* renamed from: android.util.DataUnit$1 */
    /* loaded from: classes4.dex */
    enum AnonymousClass1 extends DataUnit {
        /* synthetic */ AnonymousClass1(String str, int i, C1IA c1ia) {
            this(str, i);
        }

        private AnonymousClass1(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1000 * v;
        }
    }

    private static /* synthetic */ DataUnit[] $values() {
        return new DataUnit[]{KILOBYTES, MEGABYTES, GIGABYTES, TERABYTES, KIBIBYTES, MEBIBYTES, GIBIBYTES, TEBIBYTES};
    }

    private DataUnit(String str, int i) {
        super(str, i);
    }

    public static DataUnit valueOf(String name) {
        return (DataUnit) Enum.valueOf(DataUnit.class, name);
    }

    public static DataUnit[] values() {
        return (DataUnit[]) $VALUES.clone();
    }

    /* renamed from: android.util.DataUnit$2 */
    /* loaded from: classes4.dex */
    enum AnonymousClass2 extends DataUnit {
        /* synthetic */ AnonymousClass2(String str, int i, C2IA c2ia) {
            this(str, i);
        }

        private AnonymousClass2(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1000000 * v;
        }
    }

    /* renamed from: android.util.DataUnit$3 */
    /* loaded from: classes4.dex */
    enum AnonymousClass3 extends DataUnit {
        /* synthetic */ AnonymousClass3(String str, int i, C3IA c3ia) {
            this(str, i);
        }

        private AnonymousClass3(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1000000000 * v;
        }
    }

    /* renamed from: android.util.DataUnit$4 */
    /* loaded from: classes4.dex */
    enum AnonymousClass4 extends DataUnit {
        /* synthetic */ AnonymousClass4(String str, int i, C4IA c4ia) {
            this(str, i);
        }

        private AnonymousClass4(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1000000000000L * v;
        }
    }

    /* renamed from: android.util.DataUnit$5 */
    /* loaded from: classes4.dex */
    enum AnonymousClass5 extends DataUnit {
        /* synthetic */ AnonymousClass5(String str, int i, C5IA c5ia) {
            this(str, i);
        }

        private AnonymousClass5(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1024 * v;
        }
    }

    /* renamed from: android.util.DataUnit$6 */
    /* loaded from: classes4.dex */
    enum AnonymousClass6 extends DataUnit {
        /* synthetic */ AnonymousClass6(String str, int i, C6IA c6ia) {
            this(str, i);
        }

        private AnonymousClass6(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1048576 * v;
        }
    }

    /* renamed from: android.util.DataUnit$7 */
    /* loaded from: classes4.dex */
    enum AnonymousClass7 extends DataUnit {
        /* synthetic */ AnonymousClass7(String str, int i, C7IA c7ia) {
            this(str, i);
        }

        private AnonymousClass7(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1073741824 * v;
        }
    }

    /* renamed from: android.util.DataUnit$8 */
    /* loaded from: classes4.dex */
    enum AnonymousClass8 extends DataUnit {
        /* synthetic */ AnonymousClass8(String str, int i, C8IA c8ia) {
            this(str, i);
        }

        private AnonymousClass8(String str, int i) {
            super(str, i);
        }

        @Override // android.util.DataUnit
        public long toBytes(long v) {
            return 1099511627776L * v;
        }
    }

    public long toBytes(long v) {
        throw new AbstractMethodError();
    }
}
