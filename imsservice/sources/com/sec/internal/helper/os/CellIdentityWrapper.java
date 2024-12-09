package com.sec.internal.helper.os;

import android.telephony.CellIdentity;
import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityLte;
import android.telephony.CellIdentityNr;
import android.telephony.CellIdentityTdscdma;
import android.telephony.CellIdentityWcdma;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class CellIdentityWrapper {
    public static final CellIdentityWrapper DEFAULT = from(null);
    private final int mAreaCode;
    private final long mCellId;
    private final CellType mCellType;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    static abstract class CellType {
        public static final CellType UNKNOWN = new AnonymousClass1("UNKNOWN", 0);
        public static final CellType GSM = new AnonymousClass2("GSM", 1);
        public static final CellType CDMA = new AnonymousClass3("CDMA", 2);
        public static final CellType TDSCDMA = new AnonymousClass4("TDSCDMA", 3);
        public static final CellType WCDMA = new AnonymousClass5("WCDMA", 4);
        public static final CellType LTE = new AnonymousClass6("LTE", 5);
        public static final CellType NR = new AnonymousClass7("NR", 6);
        private static final /* synthetic */ CellType[] $VALUES = $values();

        abstract boolean isMatchedWith(int i);

        abstract int retrieveAreaCode(CellIdentity cellIdentity);

        abstract long retrieveCellId(CellIdentity cellIdentity);

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$1, reason: invalid class name */
        enum AnonymousClass1 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return false;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                return 2147483647L;
            }

            private AnonymousClass1(String str, int i) {
                super(str, i);
            }
        }

        private static /* synthetic */ CellType[] $values() {
            return new CellType[]{UNKNOWN, GSM, CDMA, TDSCDMA, WCDMA, LTE, NR};
        }

        private CellType(String str, int i) {
        }

        public static CellType valueOf(String str) {
            return (CellType) Enum.valueOf(CellType.class, str);
        }

        public static CellType[] values() {
            return (CellType[]) $VALUES.clone();
        }

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$2, reason: invalid class name */
        enum AnonymousClass2 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return i == 2 || i == 1 || i == 16;
            }

            private AnonymousClass2(String str, int i) {
                super(str, i);
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityGsm) {
                    return ((CellIdentityGsm) cellIdentity).getLac();
                }
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityGsm) {
                    return ((CellIdentityGsm) cellIdentity).getCid();
                }
                return 2147483647L;
            }
        }

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$3, reason: invalid class name */
        enum AnonymousClass3 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return false;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                return 2147483647L;
            }

            private AnonymousClass3(String str, int i) {
                super(str, i);
            }
        }

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$4, reason: invalid class name */
        enum AnonymousClass4 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return i == 17;
            }

            private AnonymousClass4(String str, int i) {
                super(str, i);
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityTdscdma) {
                    return ((CellIdentityTdscdma) cellIdentity).getLac();
                }
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityTdscdma) {
                    return ((CellIdentityTdscdma) cellIdentity).getCid();
                }
                return 2147483647L;
            }
        }

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$5, reason: invalid class name */
        enum AnonymousClass5 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return i == 3 || i == 10 || i == 8 || i == 9 || i == 15 || i == 30;
            }

            private AnonymousClass5(String str, int i) {
                super(str, i);
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityWcdma) {
                    return ((CellIdentityWcdma) cellIdentity).getLac();
                }
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityWcdma) {
                    return ((CellIdentityWcdma) cellIdentity).getCid();
                }
                return 2147483647L;
            }
        }

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$6, reason: invalid class name */
        enum AnonymousClass6 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return i == 13;
            }

            private AnonymousClass6(String str, int i) {
                super(str, i);
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityLte) {
                    return ((CellIdentityLte) cellIdentity).getTac();
                }
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityLte) {
                    return ((CellIdentityLte) cellIdentity).getCi();
                }
                return 2147483647L;
            }
        }

        /* renamed from: com.sec.internal.helper.os.CellIdentityWrapper$CellType$7, reason: invalid class name */
        enum AnonymousClass7 extends CellType {
            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            boolean isMatchedWith(int i) {
                return i == 20;
            }

            private AnonymousClass7(String str, int i) {
                super(str, i);
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            int retrieveAreaCode(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityNr) {
                    return ((CellIdentityNr) cellIdentity).getTac();
                }
                return Integer.MAX_VALUE;
            }

            @Override // com.sec.internal.helper.os.CellIdentityWrapper.CellType
            long retrieveCellId(CellIdentity cellIdentity) {
                if (cellIdentity instanceof CellIdentityNr) {
                    return ((CellIdentityNr) cellIdentity).getNci();
                }
                return Long.MAX_VALUE;
            }
        }
    }

    public static CellIdentityWrapper from(CellIdentity cellIdentity) {
        CellType cellType = CellType.UNKNOWN;
        if (cellIdentity instanceof CellIdentityLte) {
            cellType = CellType.LTE;
        } else if (cellIdentity instanceof CellIdentityNr) {
            cellType = CellType.NR;
        } else if (cellIdentity instanceof CellIdentityGsm) {
            cellType = CellType.GSM;
        } else if (cellIdentity instanceof CellIdentityWcdma) {
            cellType = CellType.WCDMA;
        } else if (cellIdentity instanceof CellIdentityTdscdma) {
            cellType = CellType.TDSCDMA;
        } else if (cellIdentity instanceof CellIdentityCdma) {
            cellType = CellType.CDMA;
        }
        return new CellIdentityWrapper(cellType, cellIdentity);
    }

    private CellIdentityWrapper(CellType cellType, CellIdentity cellIdentity) {
        this.mCellType = cellType;
        this.mAreaCode = cellType.retrieveAreaCode(cellIdentity);
        this.mCellId = cellType.retrieveCellId(cellIdentity);
    }

    public String toString() {
        if (this.mCellType == CellType.UNKNOWN) {
            return "Unknown CellIdentity";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("CellIdentity<");
        sb.append(this.mCellType);
        sb.append(">: ");
        sb.append("AreaCode: ");
        if (isValidAreaCode()) {
            sb.append(IMSLog.checker(Integer.valueOf(this.mAreaCode)));
        } else {
            sb.append("tac or lac unavailable");
        }
        sb.append(" Cell ID: ");
        if (isValidCellId()) {
            sb.append(IMSLog.checker(Long.valueOf(this.mCellId)));
        } else {
            sb.append("cid unavailable");
        }
        return sb.toString();
    }

    public int getAreaCode() {
        return this.mAreaCode;
    }

    public long getCellId() {
        return this.mCellId;
    }

    public boolean isValid() {
        return isValidAreaCode() && isValidCellId();
    }

    public boolean isValidAreaCode() {
        return this.mAreaCode != Integer.MAX_VALUE;
    }

    public boolean isValidCellId() {
        if (this.mCellType == CellType.NR) {
            if (this.mCellId != Long.MAX_VALUE) {
                return true;
            }
        } else if (this.mCellId != 2147483647L) {
            return true;
        }
        return false;
    }

    public boolean isMatched(int i) {
        return this.mCellType.isMatchedWith(i);
    }

    public boolean isCdma() {
        CellType cellType = this.mCellType;
        return cellType == CellType.TDSCDMA || cellType == CellType.CDMA;
    }
}
