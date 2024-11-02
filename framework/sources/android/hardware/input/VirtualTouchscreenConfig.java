package android.hardware.input;

import android.annotation.SystemApi;
import android.hardware.input.VirtualInputDeviceConfig;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;

@SystemApi
/* loaded from: classes2.dex */
public final class VirtualTouchscreenConfig extends VirtualInputDeviceConfig implements Parcelable {
    public static final Parcelable.Creator<VirtualTouchscreenConfig> CREATOR = new Parcelable.Creator<VirtualTouchscreenConfig>() { // from class: android.hardware.input.VirtualTouchscreenConfig.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public VirtualTouchscreenConfig createFromParcel(Parcel in) {
            return new VirtualTouchscreenConfig(in);
        }

        @Override // android.os.Parcelable.Creator
        public VirtualTouchscreenConfig[] newArray(int size) {
            return new VirtualTouchscreenConfig[size];
        }
    };
    private final int mHeight;
    private final int mWidth;

    /* synthetic */ VirtualTouchscreenConfig(Builder builder, VirtualTouchscreenConfigIA virtualTouchscreenConfigIA) {
        this(builder);
    }

    /* synthetic */ VirtualTouchscreenConfig(Parcel parcel, VirtualTouchscreenConfigIA virtualTouchscreenConfigIA) {
        this(parcel);
    }

    private VirtualTouchscreenConfig(Builder builder) {
        super(builder);
        this.mWidth = builder.mWidth;
        this.mHeight = builder.mHeight;
    }

    private VirtualTouchscreenConfig(Parcel in) {
        super(in);
        this.mWidth = in.readInt();
        this.mHeight = in.readInt();
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.hardware.input.VirtualInputDeviceConfig, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mWidth);
        dest.writeInt(this.mHeight);
    }

    /* renamed from: android.hardware.input.VirtualTouchscreenConfig$1 */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Parcelable.Creator<VirtualTouchscreenConfig> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public VirtualTouchscreenConfig createFromParcel(Parcel in) {
            return new VirtualTouchscreenConfig(in);
        }

        @Override // android.os.Parcelable.Creator
        public VirtualTouchscreenConfig[] newArray(int size) {
            return new VirtualTouchscreenConfig[size];
        }
    }

    /* loaded from: classes2.dex */
    public static final class Builder extends VirtualInputDeviceConfig.Builder<Builder> {
        private int mHeight;
        private int mWidth;

        public Builder(int touchscreenWidth, int touchscreenHeight) {
            if (touchscreenHeight <= 0 || touchscreenWidth <= 0) {
                throw new IllegalArgumentException("Cannot create a virtual touchscreen, touchscreen dimensions must be positive. Got: (" + touchscreenHeight + ", " + touchscreenWidth + NavigationBarInflaterView.KEY_CODE_END);
            }
            this.mHeight = touchscreenHeight;
            this.mWidth = touchscreenWidth;
        }

        public VirtualTouchscreenConfig build() {
            return new VirtualTouchscreenConfig(this);
        }
    }
}
