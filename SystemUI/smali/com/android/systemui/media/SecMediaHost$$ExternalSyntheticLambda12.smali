.class public final synthetic Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/media/SecMediaHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/SecMediaHost;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    check-cast p2, Lcom/android/systemui/media/MediaType;

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/media/SecMediaHost;->removePlayer(Lcom/android/systemui/media/MediaType;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost$$ExternalSyntheticLambda12;->f$0:Lcom/android/systemui/media/SecMediaHost;

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Integer;

    .line 20
    .line 21
    check-cast p2, Lcom/android/systemui/media/MediaType;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x1

    .line 31
    iget-object p0, p0, Lcom/android/systemui/media/SecMediaHost;->mViewPagerHelper:Lcom/android/systemui/media/ViewPagerHelper;

    .line 32
    .line 33
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/media/ViewPagerHelper;->setCurrentPage(IZLcom/android/systemui/media/MediaType;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
