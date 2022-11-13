local Translations = {

    -- DO NOT REMOVE ANY OF THE %

    error = {
        loose_fish = "The fish got loose.",
        intterupted = 'You were interrupted!',
        already_casted = "You already casted a Bait!",
        no_bait = "You have no bait!",
    },

    success = {
        receive_apart = 'You got a apartment',
    },

    info = {
        waiting_fish = 'Waiting for fish to bite...',
        no_bait = 'You ran out of Bait!',
        no_swim = "You can't be swimming and fishing at the same time.",
        not_suiteable = "You can't fish here!",
        in_car = "You can't fish while being inside a car...",
        rod_hands = "You already have a fishingrod in your hands!",
        fish_zone = "Fishing Zone",
    },

    text = {
        enter = 'Enter Apartment',
    },

    interactions = {
        bait_throw = "[E] Throw Bait",
    },

    menu = { -- all the menu text for the fisherman
        fish_desciption = "I know everything about Fish!",
        tour_header = "Open Tournament Menu",
        tour_txt = "Check Available Tournaments",
        notif_header = "Tournament Notification!",
        notif_txt = "Recieve Notifications",
        notif_stoptxt = "Stop Recieving Notifications",
        sell_head = "Sell Fish",
        sell_txt = "Sell all your Fish!"
    },

    tournament = {
        status = ("Tournament Status - %s Fishers"),
        signup = ("Sign Up - Most %s Caught"),
        leaderboard = ("You %s | Leader %s - Most %s Caught"),

        idle_head = "Tournament Status",
        idle_txt = "Event not active, Soon™️",

        history_head = "Tournament History",
        history_txt = ("View the previous %s tornaments"),

        claim_head = ("ID %s - Type %s"),
        claim_txt = "View Rankings & Claim Rewards (Top 3)",

        cancelled_txt = "Tournament Cancelled",

        reward_claim = ("%s - %s - Claim Reward"),
        reward_claimed = ("%s - %s - Reward Claimed")
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})