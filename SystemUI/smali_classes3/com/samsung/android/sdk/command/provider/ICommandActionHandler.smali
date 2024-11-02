.class public interface abstract Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract createStatelessCommands()Ljava/util/List;
.end method

.method public abstract loadStatefulCommand(Ljava/lang/String;)Lcom/samsung/android/sdk/command/Command;
.end method

.method public abstract loadStatefulCommand(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/Command;
.end method

.method public abstract migrateCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;)Lcom/samsung/android/sdk/command/action/CommandAction;
.end method

.method public abstract performCommandAction(Ljava/lang/String;Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/samsung/android/sdk/command/provider/ICommandActionCallback;)V
.end method
