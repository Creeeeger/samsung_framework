package android.service.autofill.augmented;

import android.annotation.SystemApi;
import android.graphics.Rect;
import android.service.autofill.augmented.AugmentedAutofillService;
import java.io.PrintWriter;

@SystemApi
/* loaded from: classes3.dex */
public abstract class PresentationParams {
    abstract void dump(String str, PrintWriter printWriter);

    PresentationParams() {
    }

    public Area getSuggestionArea() {
        return null;
    }

    @SystemApi
    /* loaded from: classes3.dex */
    public static abstract class Area {
        private final Rect mBounds;
        public final AugmentedAutofillService.AutofillProxy proxy;

        /* synthetic */ Area(AugmentedAutofillService.AutofillProxy autofillProxy, Rect rect, AreaIA areaIA) {
            this(autofillProxy, rect);
        }

        private Area(AugmentedAutofillService.AutofillProxy proxy, Rect bounds) {
            this.proxy = proxy;
            this.mBounds = bounds;
        }

        public Rect getBounds() {
            return this.mBounds;
        }

        public String toString() {
            return this.mBounds.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class SystemPopupPresentationParams extends PresentationParams {
        private final Area mSuggestionArea;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: android.service.autofill.augmented.PresentationParams$SystemPopupPresentationParams$1 */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends Area {
            AnonymousClass1(AugmentedAutofillService.AutofillProxy proxy, Rect bounds) {
                super(proxy, bounds);
            }
        }

        public SystemPopupPresentationParams(AugmentedAutofillService.AutofillProxy proxy, Rect rect) {
            this.mSuggestionArea = new Area(proxy, rect) { // from class: android.service.autofill.augmented.PresentationParams.SystemPopupPresentationParams.1
                AnonymousClass1(AugmentedAutofillService.AutofillProxy proxy2, Rect rect2) {
                    super(proxy2, rect2);
                }
            };
        }

        @Override // android.service.autofill.augmented.PresentationParams
        public Area getSuggestionArea() {
            return this.mSuggestionArea;
        }

        @Override // android.service.autofill.augmented.PresentationParams
        public void dump(String prefix, PrintWriter pw) {
            pw.print(prefix);
            pw.print("area: ");
            pw.println(this.mSuggestionArea);
        }
    }
}
