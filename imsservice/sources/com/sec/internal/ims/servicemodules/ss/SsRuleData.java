package com.sec.internal.ims.servicemodules.ss;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
abstract class SsRuleData implements Cloneable {
    protected boolean active;
    protected List<SsRule> rules = new ArrayList();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // 
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract SsRuleData mo1178clone();

    abstract void copyRule(SsRule ssRule);

    abstract SsRule getRule(int i, MEDIA media);

    static class SsRule {
        Condition conditions = new Condition();
        String ruleId;

        SsRule() {
        }
    }

    SsRuleData() {
    }

    SsRule findRule(int i, MEDIA media) {
        for (SsRule ssRule : this.rules) {
            Condition condition = ssRule.conditions;
            if (condition.condition == i && condition.media.contains(media)) {
                return ssRule;
            }
        }
        return null;
    }

    static void makeInternalRule(SsRule ssRule, int i, MEDIA media) {
        Condition condition = ssRule.conditions;
        condition.condition = i;
        condition.state = false;
        condition.action = 0;
        condition.media = new ArrayList();
        ssRule.conditions.media.add(media);
    }

    void setRule(SsRule ssRule) {
        for (SsRule ssRule2 : this.rules) {
            Condition condition = ssRule2.conditions;
            int i = condition.condition;
            Condition condition2 = ssRule.conditions;
            if (i == condition2.condition && condition.media.equals(condition2.media)) {
                this.rules.remove(ssRule2);
                this.rules.add(ssRule);
                return;
            }
        }
        this.rules.add(ssRule);
    }

    void replaceRule(SsRule ssRule) {
        for (SsRule ssRule2 : this.rules) {
            Condition condition = ssRule2.conditions;
            int i = condition.condition;
            Condition condition2 = ssRule.conditions;
            if (i == condition2.condition && condition.media.equals(condition2.media)) {
                List<SsRule> list = this.rules;
                list.set(list.indexOf(ssRule2), ssRule);
                return;
            }
        }
        this.rules.add(ssRule);
    }

    boolean isExist(int i, MEDIA media) {
        Iterator<SsRule> it = this.rules.iterator();
        while (it.hasNext()) {
            Condition condition = it.next().conditions;
            if (condition.condition == i && condition.media.contains(media)) {
                return true;
            }
        }
        return false;
    }

    boolean isExist(int i) {
        Iterator<SsRule> it = this.rules.iterator();
        while (it.hasNext()) {
            if (it.next().conditions.condition == i) {
                return true;
            }
        }
        return false;
    }

    void copySsRule(SsRule ssRule, SsRule ssRule2) {
        ssRule2.ruleId = ssRule.ruleId;
        Condition condition = new Condition();
        ssRule2.conditions = condition;
        Condition condition2 = ssRule.conditions;
        condition.condition = condition2.condition;
        condition.state = condition2.state;
        condition.action = condition2.action;
        condition.media = new ArrayList();
        ssRule2.conditions.media.addAll(ssRule.conditions.media);
        setRule(ssRule2);
    }

    void cloneSsDataInternal(SsRuleData ssRuleData) {
        ssRuleData.active = this.active;
        Iterator<SsRule> it = this.rules.iterator();
        while (it.hasNext()) {
            ssRuleData.copyRule(it.next());
        }
    }
}
