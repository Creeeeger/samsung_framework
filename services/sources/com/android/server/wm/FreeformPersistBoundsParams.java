package com.android.server.wm;

import android.graphics.Rect;
import android.view.Surface;
import com.android.modules.utils.TypedXmlSerializer;

/* loaded from: classes3.dex */
public class FreeformPersistBoundsParams {
    public int mRotation;
    public final Rect mFreeformBounds = new Rect();
    public final Rect mDisplayBounds = new Rect();

    public void restore(String str, String str2) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -40300674:
                if (str.equals("rotation")) {
                    c = 0;
                    break;
                }
                break;
            case 1284627666:
                if (str.equals("display_bounds")) {
                    c = 1;
                    break;
                }
                break;
            case 1413918884:
                if (str.equals("freeform_bounds")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.mRotation = Integer.parseInt(str2);
                return;
            case 1:
                Rect unflattenFromString = Rect.unflattenFromString(str2);
                if (unflattenFromString != null) {
                    this.mDisplayBounds.set(unflattenFromString);
                    return;
                }
                return;
            case 2:
                Rect unflattenFromString2 = Rect.unflattenFromString(str2);
                if (unflattenFromString2 != null) {
                    this.mFreeformBounds.set(unflattenFromString2);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public void saveToXml(TypedXmlSerializer typedXmlSerializer) {
        typedXmlSerializer.attribute((String) null, "freeform_bounds", this.mFreeformBounds.flattenToString());
        typedXmlSerializer.attribute((String) null, "display_bounds", this.mDisplayBounds.flattenToString());
        typedXmlSerializer.attribute((String) null, "rotation", Integer.toString(this.mRotation));
    }

    public void set(FreeformPersistBoundsParams freeformPersistBoundsParams) {
        this.mFreeformBounds.set(freeformPersistBoundsParams.mFreeformBounds);
        this.mDisplayBounds.set(freeformPersistBoundsParams.mDisplayBounds);
        this.mRotation = freeformPersistBoundsParams.mRotation;
    }

    public void reset() {
        this.mFreeformBounds.setEmpty();
        this.mDisplayBounds.setEmpty();
        this.mRotation = -1;
    }

    public boolean isValid() {
        return (this.mFreeformBounds.isEmpty() || this.mDisplayBounds.isEmpty() || this.mRotation == -1) ? false : true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" freeformBounds=" + this.mFreeformBounds);
        sb.append(" displayBounds=" + this.mDisplayBounds);
        sb.append(" rotation=" + Surface.rotationToString(this.mRotation));
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            FreeformPersistBoundsParams freeformPersistBoundsParams = (FreeformPersistBoundsParams) obj;
            if (this.mFreeformBounds.equals(freeformPersistBoundsParams.mFreeformBounds) && this.mDisplayBounds.equals(freeformPersistBoundsParams.mDisplayBounds) && this.mRotation == freeformPersistBoundsParams.mRotation) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.mFreeformBounds.hashCode() * 31) + this.mDisplayBounds.hashCode()) * 31) + this.mRotation;
    }
}
