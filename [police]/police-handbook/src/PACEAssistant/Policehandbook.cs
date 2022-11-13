using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CitizenFX.Core;
using CitizenFX.Core.Native;
using CitizenFX.Core.UI;
using static CitizenFX.Core.Native.API;

namespace Policehandbook
{
    public class Policehandbook : BaseScript
    {

        [Command("arrest")]
        private void CommandHandler()
        {
            Screen.ShowNotification($"~r~Arrest~s~:\n\nYou have the right to remain silent.\n\nAnything you say can and will be used against you in a court of law.\n\nYou have the right to an attorney. If you cannot afford an attorney, one will be provided for you.\n\nDo you understand the rights I have just read to you?\n\nWith these rights in mind, do you wish to speak to me?");
        }

        [Command("book")]
        private void CommandHandler2()
        {
            Screen.ShowNotification($"~r~Booking Cell Space~s~:\n\nFormat:\n~b~Building:~s~ ___\n~b~Age:~s~ ADULT\n~b~Sex:~s~ MALE/FEMALE\n~b~Behaviour:~s~ COMPLIANT/NON-COMPLIANT\n~b~Arrested by:~s~ OFFICER\n~b~Offence:~s~___");
        }

        [Command("gowisely")]
        private void CommandHandler3()
        {
            Screen.ShowNotification("~r~GOWISELY - Search~s~:\n\n~b~Grounds:~s~ for the search\n~b~Object:~s~ of the search of a person or property\n~b~under resonable suspicion:~s~ If not in uniform\n~b~Identity:~s~ I am rank ___\n~b~First and Last Name:~s~ attached to ___ SAST\n~b~Search under RS:~s~Under Terry v Ohio.\n~b~Reasonable Suspicion:~s~ a person can be briefly detained by a police officer based on RS in an involvement in a punishable crime. n~b~You:~s~ You are currently detained for the purpose of a search, due to reasonable suspicion of ____.");
        }

        [Command("methane")]
        private void CommandHandler4()
        {
            Screen.ShowNotification("~r~METHANE - Major Incident~s~:\n\n~b~Major Incident Declared:~s~ __\n~b~Exact Location:~s~ of incident\n~b~Type of incident:~s~ category\n~b~Hazards:~s~ in the area\n~b~Access:~s~ routes in/out\n~b~Number and types of casualties:~s~ ___\n~b~Emergency Services present and required:~s~ ___.");
        }

        [Command("ic")]
        private void CommandHandler5()
        {
            Screen.ShowNotification("~r~IC - Identity Codes~s~:\n\n~b~IC1:~s~ White - North European\n~b~IC2:~s~ White - South European\n~b~IC3:~s~ Black\n~b~IC4:~s~ Asian\n~b~IC5:~s~ Chinese, Japanese or other South East Asian\n~b~IC6:~s~ Arabic or North African\n~b~IC9:~s~ Unknown");
        }

        [Command("nec")]
        private void CommandHandler6()
        {
            Screen.ShowNotification("~r~Arrest Necessities - (IDCOPPLAN)~s~:\n\n~b~Investigation:~s~ conduct a prompt and effective.\n~b~Disappearance:~s~ prevent the prosecution being hindered.\n~b~Child or Vulnerable person:~s~ to protect a.\n~b~Obstruction:~s~ of the highway unlawfully (preventing).\n~b~Physical Injury:~s~ prevent to themselves or other person.\n~b~Public Decency:~s~ prevent an offence being committed against.\n~b~Loss or Damage:~s~ prevent to property.\n~b~Address:~s~ enable to be ascertained (not readily available).\n~b~Name:~s~ enable to be ascertained (not readily available).");
        }

        [Command("ipp")]
        private void CommandHandler7()
        {
            Screen.ShowNotification("~r~Initial Phase Pursuit - (IPP)~s~:\n\n~b~VEHICLE DESCRIPTION:~s~ MAKE/MODEL/VRM\n~b~LOCATION & DIRECTION:~s~ ___\n~b~SPEED:~s~\n___\n\n~b~VEHICLE DENSITY:~s~ LOW/MED/HIGH\n~b~PEDESTRIAN DENSITY:~s~ LOW/MED/HIGH\n~b~ROAD CONDITIONS:~s~ WET/DRY/DIRT\n~b~WEATHER:~s~ CLEAR/LIGHT/DARK\n~b~VISIBILITY:~s~\nCLEAR/MED/LOW\n\n~b~DRIVER CLASSIFICATION:~s~ IPP/ADV/TPAC\n~b~POLICE VEHICLE:~s~ MARKED/UNMARKED");
        }

        [Command("tor")]
        private void CommandHandler8()
        {
            Screen.ShowNotification("~r~Traffic Offence Report - (TOR)~s~:\n\nI am pulling you over today for the offence(s) of ___.\n\nAsk if individual has a reason for offence(s), and advise of offence(s) \n\nReturn to vehicle or safe area to look up record on MDT or start inputting record, then return to individual and advise charges if any");
        }

        [Command("wm")]
        private void CommandHandler9()
        {
            Screen.ShowNotification("~r~Warning Markers - (WM)~s~:\n\n~b~FI:~s~ FIREARMS\n~b~WE:~s~ OTHER WEAPONS\n~b~XP:~s~ EXPLOSIVES\n~b~VI:~s~ VIOLENT\n~b~CO:~s~ RUNNER\n~b~ES:~s~ ESCAPER\n~b~AG:~s~ GANG AFFILIATED\n~b~AT:~s~ MENTAL HEALTH\n~b~SU:~s~");
        }

        [Command("pic")]
        private void CommandHandler10()
        {
            Screen.ShowNotification("~r~Person In Crisis - Mental Health~s~:\n\nThe goal is to de-escalate the situation, and resolve without violence.~s~ Recognize Atypical Behavior, Assess Risk, Respond, Take Custordy or Refer\n\n\Always use NON LETHAL, de-escalate and try to contact a registered medical practitioner/healthcare professional if practicable to do so.");
        }

        [Command("handbook")]
        private void CommandHandler11()
        {
            Screen.ShowNotification("~r~Police Handbook - Commands~s~:\n\n~b~/arrest~s~ - Arrest Format\n~b~/nec~s~ - Arrest Necessities\n~b~/gowisely~s~ - Stop and Search\n~b~/ipp~s~ - Initial Phase Pursuit\n~b~/tor~s~ - Traffic Offence Report\n~b~/ic~s~ - Identity Codes\n~b~/wm~s~ - Warning Markers\n~b~/methane~s~ - Major Incident\n~b~/pic~s~ - Person In Crisis\n~b~/book~s~ - Book Cell Space");

        }

        /* Police Handbook - © 2020 London Studios - Do not redistibute, modify/change or reupload without my obtained permission. 
         * This may be used on public/private FiveM servers and used in videos published to websites, 
         * however the source files should not be redistributed. This is for non-commercial use. */
    }
}
