package android.media.tv.tuner.filter;

import android.annotation.SystemApi;
import android.media.tv.tuner.filter.SectionSettings;

@SystemApi
/* loaded from: classes2.dex */
public class SectionSettingsWithSectionBits extends SectionSettings {
    private final byte[] mFilter;
    private final byte[] mMask;
    private final byte[] mMode;

    /* synthetic */ SectionSettingsWithSectionBits(int i, boolean z, boolean z2, boolean z3, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, SectionSettingsWithSectionBitsIA sectionSettingsWithSectionBitsIA) {
        this(i, z, z2, z3, i2, bArr, bArr2, bArr3);
    }

    private SectionSettingsWithSectionBits(int mainType, boolean isCheckCrc, boolean isRepeat, boolean isRaw, int bitWidthOfLengthField, byte[] filter, byte[] mask, byte[] mode) {
        super(mainType, isCheckCrc, isRepeat, isRaw, bitWidthOfLengthField);
        this.mFilter = filter;
        this.mMask = mask;
        this.mMode = mode;
    }

    public byte[] getFilterBytes() {
        return this.mFilter;
    }

    public byte[] getMask() {
        return this.mMask;
    }

    public byte[] getMode() {
        return this.mMode;
    }

    public static Builder builder(int mainType) {
        return new Builder(mainType);
    }

    /* loaded from: classes2.dex */
    public static class Builder extends SectionSettings.Builder<Builder> {
        private byte[] mFilter;
        private byte[] mMask;
        private byte[] mMode;

        /* synthetic */ Builder(int i, BuilderIA builderIA) {
            this(i);
        }

        private Builder(int mainType) {
            super(mainType);
            this.mFilter = new byte[0];
            this.mMask = new byte[0];
            this.mMode = new byte[0];
        }

        public Builder setFilter(byte[] filter) {
            this.mFilter = filter;
            return this;
        }

        public Builder setMask(byte[] mask) {
            this.mMask = mask;
            return this;
        }

        public Builder setMode(byte[] mode) {
            this.mMode = mode;
            return this;
        }

        public SectionSettingsWithSectionBits build() {
            return new SectionSettingsWithSectionBits(this.mMainType, this.mCrcEnabled, this.mIsRepeat, this.mIsRaw, this.mBitWidthOfLengthField, this.mFilter, this.mMask, this.mMode);
        }

        @Override // android.media.tv.tuner.filter.SectionSettings.Builder
        public Builder self() {
            return this;
        }
    }
}
