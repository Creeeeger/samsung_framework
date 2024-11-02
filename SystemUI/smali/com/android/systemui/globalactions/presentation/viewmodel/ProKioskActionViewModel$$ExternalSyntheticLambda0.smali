.class public final synthetic Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->stopProKioskMode(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v3, "setProKioskState() : Exception = "

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 41
    .line 42
    const-string v2, "ProKioskManagerWrapper"

    .line 43
    .line 44
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, -0x1

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    .line 57
    .line 58
    .line 59
    if-nez v0, :cond_0

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/SystemController;->goToHome()V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mInputMethodManagerWrapper:Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ProKioskActionViewModel;->mAlertDialogFactory:Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/AlertDialogFactory;->getProKioskPasswordWindowToken()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v0, p0}, Lcom/samsung/android/globalactions/util/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
