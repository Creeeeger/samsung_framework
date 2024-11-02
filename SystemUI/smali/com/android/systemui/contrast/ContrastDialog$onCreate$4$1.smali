.class public final Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $contrastLevel:I

.field public final synthetic this$0:Lcom/android/systemui/contrast/ContrastDialog;


# direct methods
.method public constructor <init>(ILcom/android/systemui/contrast/ContrastDialog;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;->$contrastLevel:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;->$contrastLevel:I

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/UiModeManager$ContrastUtils;->fromContrastLevel(I)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog$onCreate$4$1;->this$0:Lcom/android/systemui/contrast/ContrastDialog;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/systemui/contrast/ContrastDialog;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/contrast/ContrastDialog;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 12
    .line 13
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast v0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 27
    .line 28
    const-string v1, "contrast_level"

    .line 29
    .line 30
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
