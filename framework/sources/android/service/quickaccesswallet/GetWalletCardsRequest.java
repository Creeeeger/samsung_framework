package android.service.quickaccesswallet;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public final class GetWalletCardsRequest implements Parcelable {
    public static final Parcelable.Creator<GetWalletCardsRequest> CREATOR = new Parcelable.Creator<GetWalletCardsRequest>() { // from class: android.service.quickaccesswallet.GetWalletCardsRequest.1
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public GetWalletCardsRequest createFromParcel(Parcel source) {
            int cardWidthPx = source.readInt();
            int cardHeightPx = source.readInt();
            int iconSizePx = source.readInt();
            int maxCards = source.readInt();
            return new GetWalletCardsRequest(cardWidthPx, cardHeightPx, iconSizePx, maxCards);
        }

        @Override // android.os.Parcelable.Creator
        public GetWalletCardsRequest[] newArray(int size) {
            return new GetWalletCardsRequest[size];
        }
    };
    private final int mCardHeightPx;
    private final int mCardWidthPx;
    private final int mIconSizePx;
    private final int mMaxCards;

    public GetWalletCardsRequest(int cardWidthPx, int cardHeightPx, int iconSizePx, int maxCards) {
        this.mCardWidthPx = cardWidthPx;
        this.mCardHeightPx = cardHeightPx;
        this.mIconSizePx = iconSizePx;
        this.mMaxCards = maxCards;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.mCardWidthPx);
        dest.writeInt(this.mCardHeightPx);
        dest.writeInt(this.mIconSizePx);
        dest.writeInt(this.mMaxCards);
    }

    /* renamed from: android.service.quickaccesswallet.GetWalletCardsRequest$1 */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Parcelable.Creator<GetWalletCardsRequest> {
        AnonymousClass1() {
        }

        @Override // android.os.Parcelable.Creator
        public GetWalletCardsRequest createFromParcel(Parcel source) {
            int cardWidthPx = source.readInt();
            int cardHeightPx = source.readInt();
            int iconSizePx = source.readInt();
            int maxCards = source.readInt();
            return new GetWalletCardsRequest(cardWidthPx, cardHeightPx, iconSizePx, maxCards);
        }

        @Override // android.os.Parcelable.Creator
        public GetWalletCardsRequest[] newArray(int size) {
            return new GetWalletCardsRequest[size];
        }
    }

    public int getCardWidthPx() {
        return this.mCardWidthPx;
    }

    public int getCardHeightPx() {
        return this.mCardHeightPx;
    }

    public int getIconSizePx() {
        return this.mIconSizePx;
    }

    public int getMaxCards() {
        return this.mMaxCards;
    }
}
