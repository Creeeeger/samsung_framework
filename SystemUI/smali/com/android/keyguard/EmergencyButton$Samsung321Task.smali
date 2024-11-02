.class public final Lcom/android/keyguard/EmergencyButton$Samsung321Task;
.super Landroid/os/AsyncTask;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/keyguard/EmergencyButton$Samsung321Task;-><init>(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/android/keyguard/EmergencyButton;->-$$Nest$misSamsung321Enabled(Lcom/android/keyguard/EmergencyButton;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/EmergencyButton$Samsung321Task;->this$0:Lcom/android/keyguard/EmergencyButton;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/android/keyguard/EmergencyButton;->mIsSamsung321Enable:Z

    .line 10
    .line 11
    return-void
.end method
