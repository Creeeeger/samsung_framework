package com.att.iqi.lib.metrics.ss;

import android.os.Parcel;
import android.os.Parcelable;
import com.att.iqi.lib.Metric;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class SS2S extends Metric {
    private static final byte SERVICE_RUNNING_MASK = 1;
    public static final byte SERVICE_SHOULD_NOT_RUN = 1;
    public static final byte SERVICE_SHOULD_RUN = 0;
    public static final int SHOULD_SERVICE_RUN = 0;
    private byte ucSettings;
    public static final Metric.ID ID = new Metric.ID("SS2S");
    public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.att.iqi.lib.metrics.ss.SS2S.1
        @Override // android.os.Parcelable.Creator
        public SS2S createFromParcel(Parcel parcel) {
            return new SS2S(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public SS2S[] newArray(int i) {
            return new SS2S[i];
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface IQISettings {
    }

    public SS2S() {
        this.ucSettings = (byte) 0;
    }

    public SS2S(Parcel parcel) {
        super(parcel);
        this.ucSettings = (byte) 0;
        if (parcel.readInt() >= 2) {
            this.ucSettings = parcel.readByte();
        }
    }

    public SS2S setSetting(int i, byte b) {
        if (i == 0) {
            if (b == 0 || b == 1) {
                this.ucSettings = (byte) (((byte) (this.ucSettings & (-2))) | b);
            } else {
                throw new IllegalArgumentException("Illegal value " + ((int) b) + " for setting ID " + i);
            }
        }
        return this;
    }

    public byte getSetting(int i) {
        if (i == 0) {
            return (byte) (this.ucSettings & 1);
        }
        throw new IllegalArgumentException("Invalid setting ID " + i);
    }

    @Override // com.att.iqi.lib.Metric
    public int serialize(ByteBuffer byteBuffer) {
        byteBuffer.put(this.ucSettings);
        return byteBuffer.position();
    }

    @Override // com.att.iqi.lib.Metric, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.ucSettings);
    }
}
