.class public final synthetic Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bixby2/controller/MWBixbyController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 12
    .line 13
    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->$r8$lambda$pSwgOGmGUcL5xBb97Nk0G4cengo(Lcom/android/systemui/bixby2/controller/MWBixbyController;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/bixby2/controller/MWBixbyController;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, [I

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/android/systemui/bixby2/controller/MWBixbyController;->$r8$lambda$HDdQO6yXx55WcPPyRIia8VnNEx4(Lcom/android/systemui/bixby2/controller/MWBixbyController;[I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
