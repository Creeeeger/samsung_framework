.class public final Lcom/android/systemui/power/dialog/IncompatibleChargerDialog$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;

.field public final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog$1;->this$0:Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog$1;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog$1;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog$1;->this$0:Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/systemui/power/dialog/PowerUiDialog;->mSharedPref:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog$1;->this$0:Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/systemui/power/dialog/PowerUiDialog;->mDoNotShowTag:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
