.class public final synthetic Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/TileLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/TileLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 8
    .line 9
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxCellHeight:I

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 13
    .line 14
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mMaxAllowedRows:I

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 18
    .line 19
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 23
    .line 24
    iput p1, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
