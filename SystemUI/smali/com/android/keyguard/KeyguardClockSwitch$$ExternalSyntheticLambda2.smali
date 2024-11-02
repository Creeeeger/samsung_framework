.class public final synthetic Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardClockSwitch;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/log/LogMessage;

    .line 2
    .line 3
    sget v0, Lcom/android/keyguard/KeyguardClockSwitch;->$r8$clinit:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardClockSwitch;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$1:Z

    .line 11
    .line 12
    invoke-interface {p1, v1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardClockSwitch$$ExternalSyntheticLambda2;->f$2:Z

    .line 16
    .line 17
    invoke-interface {p1, p0}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 18
    .line 19
    .line 20
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 21
    .line 22
    invoke-interface {p1, p0}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method
