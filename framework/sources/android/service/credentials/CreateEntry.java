package android.service.credentials;

import android.annotation.NonNull;
import android.app.slice.Slice;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.AnnotationValidations;

/* loaded from: classes3.dex */
public final class CreateEntry implements Parcelable {
    public static final Parcelable.Creator<CreateEntry> CREATOR = new Parcelable.Creator<CreateEntry>() { // from class: android.service.credentials.CreateEntry.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CreateEntry createFromParcel(Parcel in) {
            return new CreateEntry(in);
        }

        @Override // android.os.Parcelable.Creator
        public CreateEntry[] newArray(int size) {
            return new CreateEntry[size];
        }
    };
    private final Slice mSlice;

    /* synthetic */ CreateEntry(Parcel parcel, CreateEntryIA createEntryIA) {
        this(parcel);
    }

    private CreateEntry(Parcel in) {
        this.mSlice = (Slice) in.readTypedObject(Slice.CREATOR);
    }

    /* renamed from: android.service.credentials.CreateEntry$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<CreateEntry> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public CreateEntry createFromParcel(Parcel in) {
            return new CreateEntry(in);
        }

        @Override // android.os.Parcelable.Creator
        public CreateEntry[] newArray(int size) {
            return new CreateEntry[size];
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedObject(this.mSlice, flags);
    }

    public CreateEntry(Slice slice) {
        this.mSlice = slice;
        AnnotationValidations.validate((Class<NonNull>) NonNull.class, (NonNull) null, (Object) slice);
    }

    public Slice getSlice() {
        return this.mSlice;
    }
}
