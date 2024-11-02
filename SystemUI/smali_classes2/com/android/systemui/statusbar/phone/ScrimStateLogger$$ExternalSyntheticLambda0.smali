.class public final synthetic Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimStateLogger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

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
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/ScrimStateLogger;

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->mForceChanged:Z

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimStateLogger;->logScrimColor(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
