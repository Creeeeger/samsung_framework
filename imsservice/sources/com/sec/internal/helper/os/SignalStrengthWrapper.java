package com.sec.internal.helper.os;

import android.os.Parcel;
import android.telephony.CellSignalStrength;
import android.telephony.CellSignalStrengthCdma;
import android.telephony.CellSignalStrengthGsm;
import android.telephony.CellSignalStrengthLte;
import android.telephony.CellSignalStrengthNr;
import android.telephony.CellSignalStrengthTdscdma;
import android.telephony.SignalStrength;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SignalStrengthWrapper {
    private final SignalStrength mSignalStrength;

    public int getInvalidSignalStrength() {
        return 0;
    }

    public SignalStrengthWrapper(SignalStrength signalStrength) {
        this.mSignalStrength = signalStrength;
    }

    public void writeToParcel(Parcel parcel, int i) {
        this.mSignalStrength.writeToParcel(parcel, i);
    }

    public int getEvdoEcio() {
        return this.mSignalStrength.getEvdoEcio();
    }

    public boolean isGsm() {
        return this.mSignalStrength.isGsm();
    }

    public int getEvdoSnr() {
        return this.mSignalStrength.getEvdoSnr();
    }

    public int describeContents() {
        return this.mSignalStrength.describeContents();
    }

    public int getGsmSignalStrength() {
        return this.mSignalStrength.getGsmSignalStrength();
    }

    public int getGsmBitErrorRate() {
        return this.mSignalStrength.getGsmBitErrorRate();
    }

    public int getLevel() {
        return this.mSignalStrength.getLevel();
    }

    public int getCdmaEcio() {
        return this.mSignalStrength.getCdmaEcio();
    }

    public int getCdmaDbm() {
        return this.mSignalStrength.getCdmaDbm();
    }

    public int getEvdoDbm() {
        return this.mSignalStrength.getEvdoDbm();
    }

    public String toString() {
        return this.mSignalStrength.toString();
    }

    public int getDbm(int i) {
        CellSignalStrength cellSignalStrength;
        Iterator<CellSignalStrength> it = this.mSignalStrength.getCellSignalStrengths().iterator();
        while (true) {
            if (!it.hasNext()) {
                cellSignalStrength = null;
                break;
            }
            CellSignalStrength next = it.next();
            if (i == 13 && (next instanceof CellSignalStrengthLte)) {
                cellSignalStrength = (CellSignalStrengthLte) next;
                break;
            }
            if (i == 4 && (next instanceof CellSignalStrengthCdma)) {
                cellSignalStrength = (CellSignalStrengthCdma) next;
                break;
            }
            if (i == 17 && (next instanceof CellSignalStrengthTdscdma)) {
                cellSignalStrength = (CellSignalStrengthTdscdma) next;
                break;
            }
            if (i == 16 && (next instanceof CellSignalStrengthGsm)) {
                cellSignalStrength = (CellSignalStrengthGsm) next;
                break;
            }
            if (i == 20 && (next instanceof CellSignalStrengthNr)) {
                cellSignalStrength = (CellSignalStrengthNr) next;
                break;
            }
        }
        if (cellSignalStrength == null) {
            return 0;
        }
        return cellSignalStrength.getDbm();
    }

    public int getLteRsrp() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthLte.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthLte) it.next()).getRsrp();
        }
        return 0;
    }

    public int getLteRsrq() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthLte.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthLte) it.next()).getRsrq();
        }
        return 0;
    }

    public int getNrSsRsrp() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthNr.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthNr) it.next()).getSsRsrp();
        }
        return 0;
    }

    public int getNrSsRsrq() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthNr.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthNr) it.next()).getSsRsrq();
        }
        return 0;
    }

    public int getNrSsSinr() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthNr.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthNr) it.next()).getSsSinr();
        }
        return 0;
    }

    public int getLteLevel() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthLte.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthLte) it.next()).getLevel();
        }
        return 0;
    }

    public int getNrLevel() {
        Iterator it = this.mSignalStrength.getCellSignalStrengths(CellSignalStrengthNr.class).iterator();
        if (it.hasNext()) {
            return ((CellSignalStrengthNr) it.next()).getLevel();
        }
        return 0;
    }

    public boolean isValidSignal() {
        return getLteLevel() == 0;
    }
}
