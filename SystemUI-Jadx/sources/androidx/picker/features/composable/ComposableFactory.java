package androidx.picker.features.composable;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.picker.features.composable.ComposableType;
import androidx.recyclerview.widget.RecyclerView;
import com.android.systemui.R;
import java.security.InvalidParameterException;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class ComposableFactory {
    public final ComposableStrategy composableStrategy;
    public final ComposableBitConverter converter;
    public final IntRange viewTypeRange;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes.dex */
    enum PaddingStrategy {
        IconFramePadding(R.dimen.picker_app_list_icon_padding_start, 0, R.dimen.picker_app_list_padding_end, 0),
        LeftFramePadding(R.dimen.picker_app_list_radio_padding_start, 0, R.dimen.picker_app_list_padding_end, 0),
        TitleFramePadding(R.dimen.picker_app_list_text_only_padding_start, 0, R.dimen.picker_app_list_padding_end, 0);

        public static final Companion Companion = new Companion(null);
        private final int bottom;
        private final int end;
        private final int start;
        private final int top;

        /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
        /* loaded from: classes.dex */
        public final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        PaddingStrategy(int i, int i2, int i3, int i4) {
            this.start = i;
            this.top = i2;
            this.end = i3;
            this.bottom = i4;
        }

        public final void applyToView(View view) {
            final Resources resources = view.getContext().getResources();
            Function1 function1 = new Function1() { // from class: androidx.picker.features.composable.ComposableFactory$PaddingStrategy$applyToView$getDimenOrZero$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    int dimensionPixelOffset;
                    int intValue = ((Number) obj).intValue();
                    if (intValue == 0) {
                        dimensionPixelOffset = 0;
                    } else {
                        dimensionPixelOffset = resources.getDimensionPixelOffset(intValue);
                    }
                    return Integer.valueOf(dimensionPixelOffset);
                }
            };
            view.setPaddingRelative(((Number) function1.invoke(Integer.valueOf(this.start))).intValue(), ((Number) function1.invoke(Integer.valueOf(this.top))).intValue(), ((Number) function1.invoke(Integer.valueOf(this.end))).intValue(), ((Number) function1.invoke(Integer.valueOf(this.bottom))).intValue());
        }
    }

    public ComposableFactory(ComposableStrategy composableStrategy) {
        this.composableStrategy = composableStrategy;
        ComposableBitConverter composableBitConverter = new ComposableBitConverter(composableStrategy);
        this.converter = composableBitConverter;
        this.viewTypeRange = new IntRange(0, composableBitConverter.maxBit);
    }

    public final ComposableType getComposableType(int i) {
        boolean z;
        IntRange intRange = this.viewTypeRange;
        int i2 = intRange.first;
        if (i <= intRange.last && i2 <= i) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            ComposableBitConverter composableBitConverter = this.converter;
            Map map = composableBitConverter.cachedMapByViewType;
            ComposableType composableType = (ComposableType) ((LinkedHashMap) map).get(Integer.valueOf(i));
            if (composableType == null) {
                ComposableFrame decodeAsFrame = composableBitConverter.decodeAsFrame(0, i);
                ComposableFrame decodeAsFrame2 = composableBitConverter.decodeAsFrame(1, i);
                ComposableFrame decodeAsFrame3 = composableBitConverter.decodeAsFrame(2, i);
                ComposableFrame decodeAsFrame4 = composableBitConverter.decodeAsFrame(3, i);
                ComposableType.Companion.getClass();
                ComposableType.ComposableTypeImpl composableTypeImpl = new ComposableType.ComposableTypeImpl(decodeAsFrame, decodeAsFrame2, decodeAsFrame3, decodeAsFrame4);
                map.put(Integer.valueOf(i), composableTypeImpl);
                return composableTypeImpl;
            }
            return composableType;
        }
        throw new InvalidParameterException("viewType must be in Composable View Type range " + intRange);
    }

    public final View inflateComposableView(RecyclerView recyclerView, int i) {
        PaddingStrategy paddingStrategy;
        View inflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.picker_app_composable_row_item_view, (ViewGroup) recyclerView, false);
        ComposableType composableType = getComposableType(i);
        PaddingStrategy.Companion.getClass();
        if (composableType.getLeftFrame() != null) {
            paddingStrategy = PaddingStrategy.LeftFramePadding;
        } else if (composableType.getIconFrame() != null) {
            paddingStrategy = PaddingStrategy.IconFramePadding;
        } else {
            paddingStrategy = PaddingStrategy.TitleFramePadding;
        }
        paddingStrategy.applyToView(inflate);
        return inflate;
    }
}
