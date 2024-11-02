package android.service.autofill;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.autofill.Helper;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class NegationValidator extends InternalValidator {
    public static final Parcelable.Creator<NegationValidator> CREATOR = new Parcelable.Creator<NegationValidator>() { // from class: android.service.autofill.NegationValidator.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public NegationValidator createFromParcel(Parcel parcel) {
            return new NegationValidator((InternalValidator) parcel.readParcelable(null, InternalValidator.class));
        }

        @Override // android.os.Parcelable.Creator
        public NegationValidator[] newArray(int size) {
            return new NegationValidator[size];
        }
    };
    private final InternalValidator mValidator;

    public NegationValidator(InternalValidator validator) {
        this.mValidator = (InternalValidator) Objects.requireNonNull(validator);
    }

    @Override // android.service.autofill.InternalValidator
    public boolean isValid(ValueFinder finder) {
        return !this.mValidator.isValid(finder);
    }

    public String toString() {
        return !Helper.sDebug ? super.toString() : "NegationValidator: [validator=" + this.mValidator + NavigationBarInflaterView.SIZE_MOD_END;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeParcelable(this.mValidator, flags);
    }

    /* renamed from: android.service.autofill.NegationValidator$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<NegationValidator> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public NegationValidator createFromParcel(Parcel parcel) {
            return new NegationValidator((InternalValidator) parcel.readParcelable(null, InternalValidator.class));
        }

        @Override // android.os.Parcelable.Creator
        public NegationValidator[] newArray(int size) {
            return new NegationValidator[size];
        }
    }
}
