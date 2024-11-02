.class public final synthetic Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/TileLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/TileLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mColumns:I

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 25
    .line 26
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellWidth:I

    .line 27
    .line 28
    return p0

    .line 29
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 30
    .line 31
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellMarginHorizontal:I

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 35
    .line 36
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mLastCellWidth:I

    .line 37
    .line 38
    return p0

    .line 39
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 40
    .line 41
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mCellHeight:I

    .line 42
    .line 43
    return p0

    .line 44
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/TileLayout$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/TileLayout;

    .line 45
    .line 46
    iget p0, p0, Lcom/android/systemui/qs/TileLayout;->mSidePadding:I

    .line 47
    .line 48
    return p0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
