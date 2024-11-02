.class public final Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;
.super Landroid/telephony/TelephonyCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CellLocationListener;


# instance fields
.field public final callback:Lkotlin/jvm/functions/Function1;

.field public final slotId:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->slotId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->callback:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->callback:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl$CellLocationChangedCallback;->slotId:I

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
