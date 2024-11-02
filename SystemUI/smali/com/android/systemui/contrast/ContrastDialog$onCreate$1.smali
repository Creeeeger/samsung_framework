.class public final Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/contrast/ContrastDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/contrast/ContrastDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/systemui/contrast/ContrastDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 4
    .line 5
    iget v0, p1, Lcom/android/systemui/contrast/ContrastDialog;->initialContrast:F

    .line 6
    .line 7
    iget-object p1, p1, Lcom/android/systemui/contrast/ContrastDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    .line 9
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast p2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 23
    .line 24
    const-string v1, "contrast_level"

    .line 25
    .line 26
    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
